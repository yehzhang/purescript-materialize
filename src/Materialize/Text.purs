-- | See <https://materializecss.com/color.html>,
-- | <https://materializecss.com/typography.html>, and
-- | <https://materializecss.com/helpers.html>.
module Materialize.Text where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude

import Materialize.Color (Hue, Shade, Color(..))
import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<$~), (<~), (~>))


newtype Text = Text { hue :: Maybe Hue
                    , shade :: Maybe Shade
                    , flow :: Maybe Flow
                    , truncate :: Maybe Truncate
                    }

data Flow

data Truncate

text :: forall a r. Decorate Text a => Variadic Text r => a -> r
text a = liftVariadic $ a ~> wrap { hue: Nothing
                                  , shade: Nothing
                                  , flow: Nothing
                                  , truncate: Nothing
                                  }

instance variadicReturnText :: Variadic Text Text where
    liftVariadic = identity

flow :: Flow
flow = undefined

truncate :: Truncate
truncate = undefined

instance decorateTextFlow :: Decorate Text Flow where
    decorate (Text t) f = wrap t { flow = pure f }

instance decorateTextHue :: Decorate Text Hue where
    decorate (Text t) h = wrap t { hue = pure h }

instance decorateTextColor :: Decorate Text Color where
    decorate (Text t) (Color h s) = wrap t { hue = pure h
                                           , shade = s
                                           }

instance decorateTextShade :: Decorate Text Shade where
    decorate (Text t) s = wrap t { shade = pure s }

instance decorateTextTruncate :: Decorate Text Truncate where
    decorate (Text t) t' = wrap t { truncate = pure t' }

instance renderText :: Render Text where
    render (Text { hue: h, shade: s , flow: f, truncate: t }) =
        render t
        <> render ("flow-text" <$ f)
        <> (render h <~ "text")
        <> ("text" <$~ render s)

instance renderTruncate :: Render Truncate where
    render _ = render "truncate"

derive instance newtypeText :: Newtype Text _
