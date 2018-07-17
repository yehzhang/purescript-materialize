{-|
See <https://materializecss.com/buttons.html>,
<https://materializecss.com/floating-action-button.html>, and
<https://materializecss.com/pulse.html>.
-}
module Materialize.Buttons
    ( Button(..)
    , ButtonType
    , HalfwayFab
    , Pulse
    , button
    , raised
    , floating
    , flat
    , floatingActionButton
    , halfwayFab
    , pulse
    ) where

import Data.Either (Either(..))
import Data.Maybe (Maybe(..), maybe)
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<$~))
import Materialize.Overriden (Disabled, Large, Small)
import Materialize.Types (Class)


newtype Button = Button { type' :: ButtonType
                        , size :: Maybe (Either Small Large)
                        , disabled :: Maybe Disabled
                        , halfwayFab :: Maybe HalfwayFab
                        , pulse :: Maybe Pulse
                        }

data ButtonType = Raised
                | Floating
                | Flat

data HalfwayFab

data Pulse

button :: forall r. Variadic Button r => r
button = liftVariadic $ wrap { type': Raised
                             , size: Nothing
                             , disabled: Nothing
                             , halfwayFab: Nothing
                             , pulse: Nothing
                             }

instance variadicReturnButton :: Variadic Button Button where
    liftVariadic = identity

raised :: ButtonType
raised = Raised

floating :: ButtonType
floating = Floating

flat :: ButtonType
flat = Flat

floatingActionButton :: forall r. Variadic Class r => r
floatingActionButton = liftVariadic "fixed-action-btn"

halfwayFab :: HalfwayFab
halfwayFab = undefined

pulse :: Pulse
pulse = undefined

instance decorateButtonDisabled :: Decorate Button Disabled where
    decorate (Button b) d = wrap b { disabled = pure d }

instance decorateButtonType :: Decorate Button ButtonType where
    decorate (Button b) t = wrap b { type' = t }

instance decorateButtonSmall :: Decorate Button Small where
    decorate (Button b) s = wrap b { size = pure $ Left s }

instance decorateButtonLarge :: Decorate Button Large where
    decorate (Button b) l = wrap b { size = pure $ Right l }

instance decorateButtonHalfwayFab :: Decorate Button HalfwayFab where
    decorate (Button b) h = wrap b { halfwayFab = pure h }

instance decorateButtonPulse :: Decorate Button Pulse where
    decorate (Button b) p = wrap b { pulse = pure p }

instance renderButton :: Render Button where
    render (Button { type': t, size: s, disabled: d, halfwayFab: h, pulse: p }) =
        render d
        <> ("btn" <$~ render s)
        <> (case t of
            Raised   -> render $ maybe (pure "btn") (const Nothing) s
            Floating -> render "btn-floating"
            Flat     -> render "btn-flat")
        <> render h
        <> render p

instance renderHalfwayFab :: Render HalfwayFab where
    render _ = render "halfway-fab"

instance renderPulse :: Render Pulse where
    render _ = render "pulse"

derive instance newtypeButton :: Newtype Button _
