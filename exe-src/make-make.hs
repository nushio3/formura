{-# LANGUAGE MultiWayIf #-}
import           Control.Lens
import           Data.List
import           System.FilePath.Lens
import           System.Environment

import           Formura.Utilities



main :: IO ()
main = do
  argv <- getArgs

  if | "-F" `elem` argv -> mainF
     | "-C" `elem` argv -> mainC
     | otherwise        -> error "give me -F or -C"

mainF :: IO ()
mainF = do
  foundFiles <- fmap (sort . lines) $ readCmd $ "find . | grep finalist"
  let csrcFiles =
        [fn | fn <- foundFiles, fn ^. extension == ".f90", fn ^.basename /= "main"]
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
    , "CC=mpifrtpx -Cpp  -Karray_private -Kdynamic_iteration -Keval -Kfast,parallel -Kinstance=8 -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Kocl -Kopenmp -Kparallel -Kpreex -Kreduction -Ksimd=2"
    , "OBJS=" ++ unwords objFiles
    , "a.out: $(OBJS)"
    , "\t$(CC) $(OBJS) -o a.out"
    , unlines $ map c2oCmd csrcFiles]

mainC :: IO ()
mainC = do
  foundFiles <- fmap (sort . lines) $ readCmd $ "find . | grep champion"
  let csrcFiles =
        [fn | fn <- foundFiles, (fn ^. extension) `elem` [".c", ".cpp"] ]
      objFiles = [fn & extension .~ "o"  |fn <- csrcFiles]

      dependencyOf _ = []

      c2oCmd fn = unlines
        [ (fn & extension .~ "o") ++ ": " ++ unwords (fn: dependencyOf fn)
        , "\t$(CC) -c $^ -o $@ 2> $@.optmsg"]
  writeFile "Makefile" $ unlines
    [ "all: a.out"
    , "CC=mpiFCCpx  -Karray_private -Kdynamic_iteration -Keval -Kfast,parallel -Kinstance=8 -Klib -Kloop_fission -Kloop_part_parallel -Kloop_part_simd -Kocl -Kopenmp -Kparallel -Kpreex -Kreduction -Ksimd=2"
    , "OBJS=" ++ unwords objFiles
    , "a.out: $(OBJS)"
    , "\t$(CC) $(OBJS) -o a.out"
    , unlines $ map c2oCmd csrcFiles]
