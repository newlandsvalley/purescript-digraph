module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff)
import Test.Spec.Runner (run)
import Test.Spec.Reporter.Console (consoleReporter)

import Test.Data.GraphSpec (graphSpec)

main :: Effect Unit
main = do
  _ <- launchAff $ run [consoleReporter] graphSpec
  pure unit
