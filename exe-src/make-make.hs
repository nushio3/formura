import           Data.List
import           System.FilePath.Lens
import           Formura.Utilities



main :: IO ()
main = do
  foundFiles <- fmap (sort . lines) $ readCmd $ "find ."
  let csrcFiles =
        [fn | fn <- foundFiles, fn ^. extension == ".f90"]
      objFiles = [fn & extension .~ "o"  |fn <- csrcFiles]

      headerFiles = [fn | fn <- csrcFiles, "_header.f90" `isSuffixOf`fn]
      internalFiles = [fn | fn <- csrcFiles, "_internal_" `isInfixOf`fn]
      mainFiles = [fn | fn <- csrcFiles, "-main.f90" `isSuffixOf` fn]
      libFiles = [fn | fn <- csrcFiles, not (fn `elem` headerFiles), not (fn `elem` internalFiles), not(fn `elem` mainFiles)]

      dependencyOf fn
        | fn `elem` headerFiles = []
        | fn `elem` internalFiles = [dfn & extension .~ "o"  | dfn <- headerFiles]
        | fn `elem` libFiles = [dfn & extension .~ "o"  | dfn <- internalFiles]
        | otherwise          = [dfn & extension .~ "o"  | dfn <- libFiles]

      c2oCmd fn = unlines
        [ (fn & extension .~ "o") ++ ": " ++ unwords (fn: dependencyOf fn)
        , "\t$(CC) -c $^ -o $@ 2> $@.optmsg"]
  writeFile "Makefile" $ unlines
    [ "all: a.out"
    , "CC=mpifrt " ++ unwords (it ^. idvCompilerFlags)
    , "OBJS=" ++ unwords objFiles
    , "a.out: $(OBJS)"
    , "\t$(CC) $(OBJS) -o a.out"
    , unlines $ map c2oCmd csrcFiles]
