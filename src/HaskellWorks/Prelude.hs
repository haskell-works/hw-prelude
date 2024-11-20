module HaskellWorks.Prelude
  ( Bool(..),
    Char(..),
    Maybe(..),
    Either(..),

    String,
    Text,
    LazyText,
    ByteString,
    LazyByteString,

    Int,
    Int8,
    Int16,
    Int32,
    Int64,
    Integer,
    Word,
    Word8,
    Word16,
    Word32,
    Word64,
    Float,
    Double,
    FilePath,
    Void,

    Eq(..),
    Ord(..),
    Num(..),
    Show(..),
    IsString(..),
    tshow,

    bool,
    const,

    absurd,
    vacuous,

    either,
    lefts,
    rights,
    isLeft,
    isRight,
    fromLeft,
    fromRight,

    maybe,
    isJust,
    isNothing,
    fromMaybe,
    listToMaybe,
    maybeToList,
    catMaybes,
    mapMaybe,

    fst,
    flip,
    snd,
    id,
    seq,
    curry,
    uncurry,
    ($!),
    ($),
    (&),
    not,
    otherwise,
    (&&),
    (||),
    (.),
    (</>),

    void,
    mapM_,
    forM,
    forM_,
    sequence_,
    (=<<),
    (>=>),
    (<=<),
    forever,
    join,
    msum,
    mfilter,
    filterM,
    foldM,
    foldM_,
    replicateM,
    replicateM_,
    guard,
    when,
    unless,
    liftM,
    liftM2,
    liftM3,
    liftM4,
    liftM5,
    ap,
    (<$!>),

    (<$>),

    (<**>),
    liftA,
    liftA3,
    optional,
    asum,

    for_,

    zip,
    zip3,
    zipWith,
    zipWith3,
    unzip,
    unzip3,

    Read(..),
    readEither,

    Fractional(..),
    Floating(..),
    Integral(..),
    Real(..),
    RealFrac(..),
    RealFloat(..),
    Ratio(..),
    Rational,
    fromIntegral,
    realToFrac,
    even,
    odd,
    numericEnumFrom,
    numericEnumFromThen,
    numericEnumFromTo,
    numericEnumFromThenTo,
    integralEnumFrom,
    integralEnumFromThen,
    integralEnumFromTo,
    integralEnumFromThenTo,
    numerator,
    denominator,
    (%),

    Identity(..),

    Monad(..),
    MonadFail(..),
    MonadPlus(..),
    Applicative(..),
    Alternative(..),
    Contravariant(..),
    Divisible(..),
    Functor(..),
    Bifunctor(..),
    Semigroup(..),
    Monoid(..),
    Foldable(..),
    Traversable(..),

    ExceptT(..),
    runExceptT,

    Type,
    Typeable,

    IO,
    Handle,

    CallStack,
    HasCallStack,
    withFrozenCallStack,

    Generic,

    IOException,
    IOError,
    SomeException(..),

    onNothing,
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
import           Control.Exception
import           Control.Monad
import           Control.Monad.Trans.Except
import           Data.Bifunctor
import           Data.Bool
import           Data.ByteString                      (ByteString)
import qualified Data.ByteString.Lazy                 as LBS
import           Data.Char
import           Data.Data
import           Data.Either
import           Data.Eq
import           Data.Foldable
import           Data.Function
import           Data.Functor.Contravariant
import           Data.Functor.Contravariant.Divisible
import           Data.Functor.Identity
import           Data.Int
import           Data.Kind
import           Data.Maybe
import           Data.Monoid
import           Data.Ord
import           Data.Semigroup
import           Data.String
import           Data.Text                            (Text)
import qualified Data.Text                            as T
import qualified Data.Text.Lazy                       as LT
import           Data.Traversable
import           Data.Tuple
import           Data.Void
import           Data.Word
import           GHC.Base
import           GHC.Generics
import           GHC.Num
import           GHC.Real
import           GHC.Stack
import           HaskellWorks.Error
import           Prelude
import           System.FilePath
import           System.IO                            (Handle)
import           Text.Read

type LazyByteString = LBS.ByteString

type LazyText = LT.Text

tshow :: Show a => a -> Text
tshow = T.pack . show
