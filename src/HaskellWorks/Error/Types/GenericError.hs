{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE TypeSynonymInstances  #-}

module HaskellWorks.Error.Types.GenericError (
    GenericError (..),
) where

import           Data.Aeson
import           Data.Generics.Product.Any
import           HaskellWorks.Error.Types.RenderedError
import           Lens.Micro

import           HaskellWorks.Prelude

newtype GenericError = GenericError
    { message :: Text
    }
    deriving (Eq, Generic, Show)

instance ToRenderedError GenericError where
    toRenderedError e =
        RenderedError
            { error   = "GenericError"
            , payload = toJSON $ e ^. the @"message"
            }
