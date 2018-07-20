-- | See <https://materializecss.com/css-transitions.html>.
module Materialize.Transitions
    ( Transition
    , Direction
    , TransitionState
    , scale
    , in'
    , out
    ) where

import Prelude

import Materialize.Markup (class Render, class Variadic, liftVariadic, render)


data Transition = Transition Direction TransitionState

data Direction = In
               | Out

type TransitionState = Boolean

scale :: forall r. Variadic Transition r => Direction -> TransitionState -> r
scale d s = liftVariadic $ Transition d s

instance variadicReturnTransition :: Variadic Transition Transition where
    liftVariadic = identity

out :: Direction
out = Out

in' :: Direction
in' = In

instance renderTransition :: Render Transition where
    render (Transition d s) = render "scale-transition" <> render (resolve d s)
      where
        resolve Out false = []
        resolve In true   = ["scale-out", "scale-in"]
        resolve _ _       = ["scale-out"]
