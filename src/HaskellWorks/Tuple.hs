module HaskellWorks.Tuple
  ( uncurry3,
    uncurry4,
    uncurry5,
    uncurry6,
    uncurry7,
    uncurry8,
    uncurry9,
    curry3,
    curry4,
    curry5,
    curry6,
    curry7,
    curry8,
    curry9
  ) where

uncurry3 :: (a -> b -> c -> z) -> (a, b, c) -> z
uncurry3 fun (a, b, c) = fun a b c

uncurry4 :: (a -> b -> c -> d -> z) -> (a, b, c, d) -> z
uncurry4 fun (a, b, c, d) = fun a b c d

uncurry5 :: (a -> b -> c -> d -> e -> z) -> (a, b, c, d, e) -> z
uncurry5 fun (a, b, c, d, e) = fun a b c d e

uncurry6 :: (a -> b -> c -> d -> e -> f -> z) -> (a, b, c, d, e, f) -> z
uncurry6 fun (a, b, c, d, e, f) = fun a b c d e f

uncurry7 :: (a -> b -> c -> d -> e -> f -> g -> z) -> (a, b, c, d, e, f, g) -> z
uncurry7 fun (a, b, c, d, e, f, g) = fun a b c d e f g

uncurry8 :: (a -> b -> c -> d -> e -> f -> g -> h -> z) -> (a, b, c, d, e, f, g, h) -> z
uncurry8 fun (a, b, c, d, e, f, g, h) = fun a b c d e f g h

uncurry9 :: (a -> b -> c -> d -> e -> f -> g -> h -> i -> z) -> (a, b, c, d, e, f, g, h, i) -> z
uncurry9 fun (a, b, c, d, e, f, g, h, i) = fun a b c d e f g h i

curry3 :: ((a, b, c) -> z) -> a -> b -> c -> z
curry3 fun a b c = fun (a, b, c)

curry4 :: ((a, b, c, d) -> z) -> a -> b -> c -> d -> z
curry4 fun a b c d = fun (a, b, c, d)

curry5 :: ((a, b, c, d, e) -> z) -> a -> b -> c -> d -> e -> z
curry5 fun a b c d e = fun (a, b, c, d, e)

curry6 :: ((a, b, c, d, e, f) -> z) -> a -> b -> c -> d -> e -> f -> z
curry6 fun a b c d e f = fun (a, b, c, d, e, f)

curry7 :: ((a, b, c, d, e, f, g) -> z) -> a -> b -> c -> d -> e -> f -> g -> z
curry7 fun a b c d e f g = fun (a, b, c, d, e, f, g)

curry8 :: ((a, b, c, d, e, f, g, h) -> z) -> a -> b -> c -> d -> e -> f -> g -> h -> z
curry8 fun a b c d e f g h = fun (a, b, c, d, e, f, g, h)

curry9 :: ((a, b, c, d, e, f, g, h, i) -> z) -> a -> b -> c -> d -> e -> f -> g -> h -> i -> z
curry9 fun a b c d e f g h i = fun (a, b, c, d, e, f, g, h, i)
