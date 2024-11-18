module HaskellWorks.Stack
  ( callerModuleName,
  ) where

import           Data.Function
import           Data.Maybe    (listToMaybe, maybe)
import           Data.String
import           Data.Tuple
import           GHC.Stack     (HasCallStack, callStack, getCallStack,
                                srcLocModule)

-- | Get the module name of the caller.
callerModuleName :: HasCallStack => String
callerModuleName = maybe "<no-module>" (srcLocModule . snd) (listToMaybe (getCallStack callStack))
