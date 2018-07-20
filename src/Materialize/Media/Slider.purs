-- | See <https://materializecss.com/media.html>.
module Materialize.Media.Slider where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render)
import Materialize.Types (Class)


newtype Slider = Slider (Maybe Fullscreen)

data Fullscreen

slider :: forall r. Variadic Slider r => r
slider = liftVariadic $ wrap Nothing

slides :: forall r. Variadic Class r => r
slides = liftVariadic "slides"

sliderCaption :: forall r. Variadic Class r => r
sliderCaption = liftVariadic "caption"

fullscreen :: Fullscreen
fullscreen = undefined

instance decorateSliderFullscreen :: Decorate Slider Fullscreen where
    decorate _ = wrap <<< pure

instance renderSlider :: Render Slider where
    render s = render (unwrap s) <> render "slider"

instance renderFullscreen :: Render Fullscreen where
    render _ = render "fullscreen"

derive instance newtypeSlider :: Newtype Slider _
