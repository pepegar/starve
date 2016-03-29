{-# LANGUAGE OverloadedStrings #-}
module Lib (getRepos) where

import Network.Wreq
import Control.Lens
import Data.Aeson
import Types

getRepos :: String -> IO [Repo]
getRepos userName = do
  response <- get "https://api.github.com/users/pepegar/repos"
  let jsonResponse = decode body :: Maybe [Repo]
    where body = response ^? responseBody
  jsonResponse
