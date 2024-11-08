module HaskellWorks.ToText
  ( ToText (..)
  ) where

import           Data.Function
import           Data.String            (String)
import           Data.Text              (Text)
import qualified Data.Text              as T
import qualified Data.Text.Lazy         as LT
import qualified Data.Text.Lazy.Builder as TB

class ToText a where
  toText :: a -> Text

instance ToText String where
  toText = T.pack

instance ToText Text where
  toText = id

instance ToText LT.Text where
  toText = LT.toStrict

instance ToText TB.Builder where
  toText = LT.toStrict . TB.toLazyText
