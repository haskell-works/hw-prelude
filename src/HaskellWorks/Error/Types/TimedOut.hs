module HaskellWorks.Error.Types.TimedOut (
    TimedOut (..),
) where

import           HaskellWorks.Prelude

newtype TimedOut = TimedOut
    { message :: Text
    }
    deriving (Eq, Generic, Show)
