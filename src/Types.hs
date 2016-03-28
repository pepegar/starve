{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}
module Types where

import Data.Aeson (FromJSON)
import Data.Text
import GHC.Generics

data Repo = Repo {
  user :: Text,
  name :: Text
} deriving (Generic, Eq, Show)

instance FromJSON Repo
