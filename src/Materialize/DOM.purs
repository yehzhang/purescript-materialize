module Materialize.DOM
    ( InstanceSelectors
    , InstanceElement
    , ComponentClass
    , class Component
    , instanceSelectors
    , componentClass
    , getInstance
    , findElements
    , findInstances
    , class Init
    , init
    , class Toggle
    , open
    , close
    , class Destroy
    , destroy
    , class Dismiss
    , dismiss
    ) where

import Data.Array (catMaybes, mapMaybe)
import Data.Maybe (Maybe)
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.Nullable (Nullable, toMaybe)
import Data.Traversable (traverse)
import Effect (Effect)
import Effect.Uncurried (EffectFn2, runEffectFn2)
import Prelude
import Web.DOM.Element (Element, fromNode)
import Web.DOM.NodeList (toArray)
import Web.DOM.ParentNode (ParentNode, querySelectorAll)


newtype InstanceSelectors a = InstanceSelectors String

newtype InstanceElement a = InstanceElement Element

foreign import data ComponentClass :: Type -> Type

class Component a where
    instanceSelectors :: InstanceSelectors a
    componentClass :: Effect (ComponentClass a)

getInstance :: forall a. Component a => Element -> Effect (Maybe a)
getInstance e = do
    c :: ComponentClass a <- componentClass
    toMaybe <$> runEffectFn2 getInstanceImpl c e

findElements :: forall a.
    Component a => ParentNode -> Effect (Array (InstanceElement a))
findElements p = do
    let ss = wrap $ unwrap $ instanceSelectors :: InstanceSelectors a
    ns <- querySelectorAll ss p
    ns' <- toArray ns
    pure $ wrap <$> mapMaybe fromNode ns'

class Init a b | b -> a where
    init :: a -> (InstanceElement b) -> Effect b

findInstances :: forall a. Component a => ParentNode -> Effect (Array a)
findInstances p = do
    es :: Array (InstanceElement a) <- findElements p
    is <- traverse (getInstance <<< unwrap) es
    pure $ catMaybes is

class Toggle a where
    open :: a -> Effect a
    close :: a -> Effect a

class Destroy a where
    destroy :: a -> Effect a

class Dismiss a where
    dismiss :: a -> Effect a

foreign import getInstanceImpl :: forall a b.
    EffectFn2 (ComponentClass a) Element (Nullable b)

derive instance newtypeInstanceSelectors :: Newtype (InstanceSelectors a) _

derive instance newtypeInstanceElement :: Newtype (InstanceElement a) _
