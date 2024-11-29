module HaskellWorks.Tuple
  ( uncurry3,
    uncurry4,
    uncurry5,
    uncurry6,
    curry3,
    curry4,
    curry5,
    curry6,
  ) where

uncurry3 :: (a -> b -> c -> d) -> (a, b, c) -> d
uncurry3 f (a, b, c) = f a b c

uncurry4 :: (a -> b -> c -> d -> e) -> (a, b, c, d) -> e
uncurry4 f (a, b, c, d) = f a b c d

uncurry5 :: (a -> b -> c -> d -> e -> f) -> (a, b, c, d, e) -> f
uncurry5 f (a, b, c, d, e) = f a b c d e

uncurry6 :: (a -> b -> c -> d -> e -> f -> g) -> (a, b, c, d, e, f) -> g
uncurry6 f (a, b, c, d, e, g) = f a b c d e g

curry3 :: ((a, b, c) -> d) -> a -> b -> c -> d
curry3 f a b c = f (a, b, c)

curry4 :: ((a, b, c, d) -> e) -> a -> b -> c -> d -> e
curry4 f a b c d = f (a, b, c, d)

curry5 :: ((a, b, c, d, e) -> f) -> a -> b -> c -> d -> e -> f
curry5 f a b c d e = f (a, b, c, d, e)

curry6 :: ((a, b, c, d, e, f) -> g) -> a -> b -> c -> d -> e -> f -> g
curry6 f a b c d e g = f (a, b, c, d, e, g)
