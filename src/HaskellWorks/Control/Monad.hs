module HaskellWorks.Control.Monad
  ( whileM,
    unlessM,

    repeatNUntilM_,
    repeatNWhileM_,
  ) where

import           HaskellWorks.Prelude

whileM :: Monad m => m Bool -> m ()
whileM act = do
  b <- act
  when b $ whileM act

unlessM :: Monad m => m Bool -> m ()
unlessM act = do
  b <- act
  unless b $ unlessM act

-- | Repeat an action n times until the action returns True.
repeatNUntilM_ :: ()
  => Monad m
  => Int
  -> (Int -> m Bool)
  -> m ()
repeatNUntilM_ n action = go 0
  where
    go i =
      when (i < n) $ do
        shouldTerminate <- action i
        unless shouldTerminate $ go (i + 1)

-- | Repeat an action n times while the action returns True.
repeatNWhileM_ :: ()
  => Monad m
  => Int
  -> (Int -> m Bool)
  -> m ()
repeatNWhileM_ n action = go 0
  where
    go i =
      when (i < n) $ do
        shouldContinue <- action i
        when shouldContinue $ go (i + 1)
