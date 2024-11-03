{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE TypeSynonymInstances  #-}

module HaskellWorks.Error.Types.GenericError (
    GenericError (..),
) where


import           HaskellWorks.Prelude

newtype GenericError = GenericError
    { message :: Text
    }
    deriving (Eq, Generic, Show)
