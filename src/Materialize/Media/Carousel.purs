-- | See <https://materializecss.com/carousel.html>.
module Materialize.Media.Carousel where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, renderString, (<~))
import Materialize.Overriden (Fixed)


newtype Carousel = Carousel (Maybe FillWidthSlider)

newtype CarouselItem = CarouselItem (Maybe Fixed)

data FillWidthSlider

carousel :: forall r. Variadic Carousel r => r
carousel = liftVariadic $ wrap Nothing

instance variadicReturnCarousel :: Variadic Carousel Carousel where
    liftVariadic = identity

carouselItem :: forall r. Variadic CarouselItem r => r
carouselItem = liftVariadic $ wrap Nothing

instance variadicReturnCarouselItem :: Variadic CarouselItem CarouselItem where
    liftVariadic = identity

fullWidthSlider :: FillWidthSlider
fullWidthSlider = undefined

instance decorateCarouselSlider :: Decorate Carousel FillWidthSlider where
    decorate _ = wrap <<< pure

instance decorateCarouselItemFixed :: Decorate CarouselItem Fixed where
    decorate _ = wrap <<< pure

instance renderCarousel :: Render Carousel where
    render c = render "carousel" <> (render $ "carousel-slider" <$ unwrap c)

instance renderCarouselItem :: Render CarouselItem where
    render c = render $ "carousel" <~ (renderString <$> unwrap c) <~ "item"

derive instance newtypeCarousel :: Newtype Carousel _

derive instance newtypeCarouselItem :: Newtype CarouselItem _
