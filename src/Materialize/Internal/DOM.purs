module Materialize.Internal.DOM
    ( gOpen
    , gClose
    , gDestroy
    , gDismiss
    , gInit
    ) where

import Data.Newtype (unwrap)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn3, runEffectFn1, runEffectFn3)
import Prelude
import Web.DOM.Element (Element)

import Materialize.DOM (class Component, ComponentClass, InstanceElement, componentClass)


foreign import gOpenImpl :: forall a. EffectFn1 a a

foreign import gCloseImpl :: forall a. EffectFn1 a a

foreign import gDestroyImpl :: forall a. EffectFn1 a a

foreign import gDismissImpl :: forall a. EffectFn1 a a

foreign import gInitImpl :: forall a opts b.
    EffectFn3 (ComponentClass a) Element opts b

gOpen :: forall a. a -> Effect a
gOpen = runEffectFn1 gOpenImpl

gClose :: forall a. a -> Effect a
gClose = runEffectFn1 gCloseImpl

gDestroy :: forall a. a -> Effect a
gDestroy = runEffectFn1 gDestroyImpl

gDismiss :: forall a. a -> Effect a
gDismiss = runEffectFn1 gDismissImpl

gInit :: forall a b. Component b => a -> InstanceElement b -> Effect b
gInit os e = do
    c :: ComponentClass b <- componentClass
    runEffectFn3 gInitImpl c (unwrap e) os
