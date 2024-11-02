{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE TypeSynonymInstances  #-}

module HaskellWorks.Error.Types.TimedOut (
    TimedOut (..),
) where

import           Data.Aeson
import           Data.Generics.Product.Any
import           HaskellWorks.Error.Types.RenderedError
import           Lens.Micro

import           HaskellWorks.Prelude

newtype TimedOut = TimedOut
    { message :: Text
    }
    deriving (Eq, Generic, Show)

instance ToRenderedError TimedOut where
    toRenderedError e =
        RenderedError
            { error   = "TimedOut"
            , payload = toJSON $ e ^. the @"message"
            }
