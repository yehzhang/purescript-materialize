{-|
See <https://materializecss.com/toasts.html>.
-}
module Materialize.Toasts
    ( ToastOptions
    , Toast
    , toast
    , toastS
    , toastM
    , rounded
    , dismissAllToasts
    ) where

import Data.Newtype (wrap)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Aff.Compat (EffectFnAff, fromEffectFnAff)
import Prelude
import Text.Smolder.Markup (Markup)
import Text.Smolder.Renderer.String (render)

import Materialize.DOM (class Component, class Dismiss, ComponentClass)
import Materialize.Internal.DOM (gDismiss)
import Materialize.Internal.Options (class Subrow, Subrecord, mkSubrecord)
import Materialize.Markup (class Variadic, liftVariadic)
import Materialize.Types (Class)


type ToastOptions = ( html :: String
                    , displayLength :: Number
                    , inDuration :: Number
                    , outDuration :: Number
                    , classes :: Class
                    , activationPercent :: Number
                    )

foreign import data Toast :: Type

instance componentToast :: Component Toast where
    instanceSelectors = wrap ".toast"
    componentClass = getClass

foreign import getClass :: Effect (ComponentClass Toast)

-- | Sends a toast.
toast :: forall r. Subrow r ToastOptions => { | r } -> Aff Unit
toast = fromEffectFnAff <<< toastImpl <<< mkSubrecord

-- | Sends a toast with content being text.
toastS :: String -> Aff Unit
toastS t = toast { html: t }

-- | Sends a toast with content being a markup node.
toastM :: forall e. Markup e -> Aff Unit
toastM = toastS <<< render

foreign import toastImpl :: Subrecord ToastOptions -> EffectFnAff Unit

rounded :: forall r. Variadic Class r => r
rounded = liftVariadic "rounded"

instance dismissToast :: Dismiss Toast where
    dismiss = gDismiss

foreign import dismissAllToasts :: Effect Unit
