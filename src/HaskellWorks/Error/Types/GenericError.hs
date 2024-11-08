module HaskellWorks.Error.Types.GenericError (
    GenericError (..),
) where


import           HaskellWorks.Prelude

newtype GenericError = GenericError
    { message :: Text
    }
    deriving (Eq, Generic, Show)
