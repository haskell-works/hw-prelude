{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE TypeSynonymInstances  #-}

module HaskellWorks.Error.Types.RenderedError (
    RenderedError (..),

    ToRenderedError (..),
) where

import           Data.Aeson

import           HaskellWorks.Prelude

data RenderedError = RenderedError
    { error   :: Text
    , payload :: Value
    }
    deriving (Eq, Generic, Show)

instance ToJSON RenderedError where
    toJSON e =
        object
            [ "error" .= error e
            , "payload" .= payload e
            ]

class ToRenderedError a where
    toRenderedError :: a -> RenderedError

instance ToRenderedError RenderedError where
    toRenderedError = id
