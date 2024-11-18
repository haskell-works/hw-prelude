module HaskellWorks.FilePath
  ( exeSuffix,
    addExeSuffix,
  ) where

import qualified HaskellWorks.OS as OS

import qualified Data.List       as L
import           Data.Monoid
import           Data.String

exeSuffix :: String
exeSuffix = if OS.isWin32 then ".exe" else ""

addExeSuffix :: String -> String
addExeSuffix s = if ".exe" `L.isSuffixOf` s
  then s
  else s <> exeSuffix
