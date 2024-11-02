{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE TypeSynonymInstances  #-}

module HaskellWorks.Error.Types.All (
    GenericError (..),
    RenderedError (..),
    TimedOut(..),

    ToRenderedError (..),
) where

import           HaskellWorks.Error.Types.GenericError
import           HaskellWorks.Error.Types.RenderedError
import           HaskellWorks.Error.Types.TimedOut
