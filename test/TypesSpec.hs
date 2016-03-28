{-# LANGUAGE OverloadedStrings #-}
module TypesSpec where

import Data.Aeson (decode)
import Test.Hspec
import Types

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "Types" $ do
    it "is possible to decode repo json to Repo" $ do
      decode repoJson `shouldBe` repo
      where
        repoJson = "{\"user\": \"pepegar\", \"name\": \"starve\"}"
        repo = Just $ Repo "pepegar" "starve"
