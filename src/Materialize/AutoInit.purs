-- | See <https://materializecss.com/auto-init.html>.
module Materialize.AutoInit
    ( autoInit
    , noAutoInit
    ) where

import Effect (Effect)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import Prelude
import Web.DOM.ParentNode (ParentNode)

import Materialize.Markup (class Variadic, liftVariadic)
import Materialize.Types (Class)


autoInit :: ParentNode -> Effect Unit
autoInit = runEffectFn1 autoInitImpl

foreign import autoInitImpl :: EffectFn1 ParentNode Unit

noAutoInit :: forall r. Variadic Class r => r
noAutoInit = liftVariadic "no-autoinit"
