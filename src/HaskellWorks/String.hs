module HaskellWorks.String
  ( ToString(..),
  ) where

import           Data.Function
import           Data.String
import           Data.Text      (Text)
import qualified Data.Text      as T
import qualified Data.Text.Lazy as LT

class ToString a where
  toString :: a -> String

instance ToString String where
  toString = id

instance ToString Text where
  toString = T.unpack

instance ToString LT.Text where
  toString = LT.unpack
