module HaskellWorks.Either
  ( orElse
  ) where

import           Data.Either
import           Data.Function

orElse :: Either e a -> Either e a -> Either e a
orElse a b =
  either (const b) Right a
