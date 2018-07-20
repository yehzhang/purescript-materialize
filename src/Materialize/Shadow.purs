-- | See <https://materializecss.com/shadow.html>.
module Materialize.Shadow
    ( Shadow
    , ZDepth
    , shadow
    , zDepth
    ) where

import Data.Newtype (class Newtype, unwrap, wrap)
import Data.Typelevel.Num (class LtEq, class Nat, D5, toInt)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<~))


newtype Shadow = Shadow Int

newtype ZDepth = ZDepth Int

shadow :: forall a r. Variadic Shadow r => (a -> ZDepth) -> a -> r
shadow f = liftVariadic <<< wrap <<< unwrap <<< f

instance variadicReturnShadow :: Variadic Shadow Shadow where
    liftVariadic = identity

zDepth :: forall d. Nat d => LtEq d D5 => d -> ZDepth
zDepth = wrap <<< toInt

instance decorateShadowZDepth :: Decorate Shadow ZDepth where
    decorate _ = wrap <<< unwrap

instance renderShadow :: Render Shadow where
    render (Shadow i) = render "z-depth" <~ show i

derive instance newtypeZDepth :: Newtype ZDepth _

derive instance newtypeShadow :: Newtype Shadow _
