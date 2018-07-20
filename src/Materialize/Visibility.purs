-- | See <https://materializecss.com/helpers.html>.
module Materialize.Visibility
    ( Visibility(..)
    , VisibilityType
    , On
    , hide
    , show
    , on
    ) where

import Data.Newtype (class Newtype, wrap)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render)
import Materialize.Overriden (Large, Medium, Small)


newtype Visibility = Visibility { type' :: VisibilityType
                                , onSmall :: Boolean
                                , onMedium :: Boolean
                                , onLarge :: Boolean
                                }

data VisibilityType = Show
                    | Hide

newtype On a = On a

hide :: forall r. Variadic Visibility r => r
hide = visibility Hide

show :: forall r. Variadic Visibility r => r
show = visibility Show

visibility :: forall r. Variadic Visibility r => VisibilityType -> r
visibility t = liftVariadic $ wrap { type': t
                                  , onSmall: false
                                  , onMedium: false
                                  , onLarge: false
                                  }

on :: forall a. a -> On a
on = wrap

instance variadicReturnVisibility :: Variadic Visibility Visibility where
    liftVariadic = identity

instance decorateVisibilityOnSmall :: Decorate Visibility (On Small) where
    decorate (Visibility b) _ = wrap b { onSmall = true }

instance decorateVisibilityOnMedium :: Decorate Visibility (On Medium) where
    decorate (Visibility b) _ = wrap b { onMedium = true }

instance decorateVisibilityOnLarge :: Decorate Visibility (On Large) where
    decorate (Visibility b) _ = wrap b { onLarge = true }

instance renderVisibility :: Render Visibility where
    render (Visibility { type': t, onSmall: s, onMedium: m, onLarge: l }) =
        render $ render' t s m l
      where
        render' Hide true false false = ["hide-on-small-only"]
        render' Hide false true false = ["hide-on-med-only"]
        render' Hide false false true = ["hide-on-large-only"]
        render' Hide true true false  = ["hide-on-med-and-down"]
        render' Hide false true true  = ["hide-on-med-and-up"]
        render' Hide true false true  =
            ["hide-on-small-only", "hide-on-large-only"]
        render' Hide _ _ _            = ["hide"]
        render' Show true false false = ["show-on-small"]
        render' Show false true false = ["show-on-medium"]
        render' Show false false true = ["show-on-large"]
        render' Show true true false  = ["show-on-medium-and-down"]
        render' Show false true true  = ["show-on-medium-and-up"]
        render' Show true false true  = ["show-on-small", "show-on-large"]
        render' Show _ _ _            = ["show"]

derive instance newtypeVisibility :: Newtype Visibility _

derive instance newtypeOn :: Newtype (On a) _
