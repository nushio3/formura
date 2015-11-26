stack haddock --haddock-deps && \
cabal configure --package-db=clear --package-db=global --package-db=$(stack path --snapshot-pkg-db) --package-db=$(stack path --local-pkg-db) && \
cabal haddock
