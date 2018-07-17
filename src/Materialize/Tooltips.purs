{-|
See <https://materializecss.com/tooltips.html>.
-}
module Materialize.Tooltips
    ( Tooltip
    , TooltipOptions
    , TooltipPosition
    , tooltipped
    , dataTooltipPosition
    , dataTooltip
    ) where

import Data.Either.Nested (Either4, in1, in2, in3, in4)
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Effect (Effect)
import Effect.Aff.Compat (EffectFn2, runEffectFn2)
import Prelude
import Text.Smolder.Markup (Attribute, attribute)

import Materialize.DOM (class Component, class Destroy, class Init, class Toggle, ComponentClass)
import Materialize.Internal.DOM (gClose, gDestroy, gInit, gOpen)
import Materialize.Internal.Options (class Subrow, Subrecord, mkSubrecord)
import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, renderString, (~>))
import Materialize.Overriden (Bottom, Left, Right, Top)
import Materialize.Types (Class)


foreign import data Tooltip :: Type

type TooltipOptions = ( exitDelay :: Number
                      , enterDelay :: Number
                      , html :: String
                      , margin :: Number
                      , inDuration :: Number
                      , outDuration :: Number
                      , position :: String
                      , transitionMovement :: Number
                      , exitOnClick :: Boolean
                      )

newtype TooltipPosition = TooltipPosition (Either4 Bottom Top Left Right)

tooltipped :: forall r. Variadic Class r => r
tooltipped = liftVariadic "tooltipped"

dataTooltipPosition :: forall a r.
    Decorate TooltipPosition a => Variadic Attribute r => a -> r
dataTooltipPosition a = liftVariadic $
    attribute "data-position" $ renderString $ a ~> undefined :: TooltipPosition

instance variadicReturnTooltipPosition :: Variadic TooltipPosition TooltipPosition where
    liftVariadic = identity

dataTooltip :: String -> Attribute
dataTooltip = attribute "data-tooltip"

instance decorateTooltipPositionBottom :: Decorate TooltipPosition Bottom where
    decorate _ = wrap <<< in1

instance decorateTooltipPositionTop :: Decorate TooltipPosition Top where
    decorate _ = wrap <<< in2

instance decorateTooltipPositionLeft :: Decorate TooltipPosition Left where
    decorate _ = wrap <<< in3

instance decorateTooltipPositionRight :: Decorate TooltipPosition Right where
    decorate _ = wrap <<< in4

derive instance newtypeTooltipPosition :: Newtype TooltipPosition _

derive newtype instance renderTooltipPosition :: Render TooltipPosition

instance componentTooltip :: Component Tooltip where
    instanceSelectors = wrap $ "." <> tooltipped
    componentClass = getClass

foreign import getClass :: Effect (ComponentClass Tooltip)

instance initTooltip :: Subrow r TooltipOptions => Init { | r } Tooltip where
    init a e = gInit a e >>= runEffectFn2 extraInitImpl (mkSubrecord a)

foreign import extraInitImpl ::
    EffectFn2 (Subrecord TooltipOptions) Tooltip Tooltip

instance destroyTooltip :: Destroy Tooltip where
    destroy = gDestroy

instance toggleTooltip :: Toggle Tooltip where
    open = gOpen
    close = gClose
