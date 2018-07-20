-- | See <https://materializecss.com/media-css.html> and
-- | <https://materializecss.com/media.html>.
module Materialize.Media.Images where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude
import Text.Smolder.Markup (Attribute, attribute)

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<~), (~>))
import Materialize.Overriden (Circular, Responsive)


newtype Image = Image { circular :: Maybe Circular
                      , responsive :: Maybe Responsive
                      , materialBoxed :: Maybe MaterialBoxed
                      }

data MaterialBoxed

image :: forall a r. Decorate Image a => Variadic Image r => a -> r
image a = liftVariadic $ a ~> wrap { circular: Nothing
                                   , responsive: Nothing
                                   , materialBoxed: Nothing
                                   }

instance variadicReturnImage :: Variadic Image Image where
    liftVariadic = identity

materialBoxed :: MaterialBoxed
materialBoxed = undefined

dataImageCaption :: String -> Attribute
dataImageCaption = attribute "data-caption"

instance decorateImageCircular :: Decorate Image Circular where
    decorate (Image i) c' = wrap i { circular = pure c' }

instance decorateImageResponsive :: Decorate Image Responsive where
    decorate (Image i) r = wrap i { responsive = pure r }

instance decorateImageMaterialBoxed :: Decorate Image MaterialBoxed where
    decorate (Image i) m = wrap i { materialBoxed = pure m }

instance renderImage :: Render Image where
    render (Image { circular: c, responsive: r, materialBoxed: m }) =
        (render r <~ "img") <> render ("circle" <$ c) <> render m

instance renderMaterialBoxed :: Render MaterialBoxed where
    render _ = render "materialboxed"

derive instance newtypeImage :: Newtype Image _
