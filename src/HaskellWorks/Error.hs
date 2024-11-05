module HaskellWorks.Error
  ( onNothing,
    onNothingM,
    onLeft,
    onLeftM,
    onLeft_,
    onLeftM_,
    onMany,
    onManyM,
    onMany_,
    onManyM_,
  ) where

import           Control.Applicative
import           Control.Monad
import           Data.Either
import           Data.Function
import           Data.List.NonEmpty
import           Data.Maybe

-- | Handle the case where a value is 'Nothing'.
onNothing :: forall a m. ()
  => Monad m
  => m a
  -> Maybe a
  -> m a
onNothing h = maybe h return

-- | Handle the case where an effectful function returns 'Nothing'.
onNothingM :: forall a m. ()
  => Monad m
  => m a
  -> m (Maybe a)
  -> m a
onNothingM h f = onNothing h =<< f

-- | Handle the case where a value is 'Left'.
onLeft :: forall e a m. ()
  => Monad m
  => (e -> m a)
  -> Either e a
  -> m a
onLeft f = either f pure

-- | Handle the case where an effectful function returns 'Left'.
onLeftM :: forall e a m. ()
  => Monad m
  => (e -> m a)
  -> m (Either e a)
  -> m a
onLeftM f action = onLeft f =<< action

-- | Handle the case where a value is 'Left'.
onLeft_ :: forall e a m. ()
  => Monad m
  => m a
  -> Either e a
  -> m a
onLeft_ f = either (const f) pure

-- | Handle the case where an effectful function returns 'Left'.
onLeftM_ :: forall e a m. ()
  => Monad m
  => m a
  -> m (Either e a)
  -> m a
onLeftM_ f action = onLeft_ f =<< action

-- | Handle the case where a list with many (more than one) elements.
onMany :: forall a m.()
  => Monad m
  => (NonEmpty a -> m (Maybe a))
  -> [a]
  -> m (Maybe a)
onMany h as = case as of
    []       -> pure Nothing
    [x]      -> pure (Just x)
    (x : xs) -> h (x :| xs)

-- | Handle the case where an effectul function returns a list with many (more than one) elements.
onManyM :: forall a m.()
  => Monad m
  => (NonEmpty a -> m (Maybe a))
  -> m [a]
  -> m (Maybe a)
onManyM h f =
  f >>= onMany h

-- | Handle the case where a list with many (more than one) elements.
onMany_ :: forall a m.()
  => Monad m
  => m (Maybe a)
  -> [a]
  -> m (Maybe a)
onMany_ h as = case as of
    []  -> pure Nothing
    [x] -> pure (Just x)
    _   -> h

-- | Handle the case where an effectul function returns a list with many (more than one) elements.
onManyM_ :: forall a m.()
  => Monad m
  => m (Maybe a)
  -> m [a]
  -> m (Maybe a)
onManyM_ h f =
  f >>= onMany_ h
