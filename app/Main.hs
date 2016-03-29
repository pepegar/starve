module Main where

import Options.Applicative

data Starve = Starve {
  username :: String,
  interactive :: Bool
}

runWithOptions :: Starve -> IO ()
runWithOptions opts = do
  putStrLn ("hello dolly " ++ username opts ++ "!!")

main :: IO ()
main = execParser opts >>= runWithOptions
  where
    parser = Starve <$> argument str (metavar "username")
                    <*> switch (short 'i' <>
                                long "interactive" <>
                                help "run interactively")
    opts = info parser mempty
