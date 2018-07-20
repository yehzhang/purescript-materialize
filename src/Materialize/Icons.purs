-- | See "Materialize.Icons.Data" for all available icons.
-- |
-- | See also <https://materializecss.com/icons.html>.
module Materialize.Icons where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap)
import Data.Either.Nested (Either4, in1, in2, in3, in4)
import Data.Typelevel.Undefined (undefined)
import Prelude
import Text.Smolder.Markup (text, (!))
import Text.Smolder.HTML (i)

import Materialize.Icons.Data (Icons)
import Materialize.Markup (class Decorate, class Render, render, class Variadic, classList, liftVariadic, renderString)
import Materialize.Markup.Markupable (class Markupable)
import Materialize.Overriden (Large, Medium, Small, Tiny)
import Materialize.Types (Class)


newtype Icon = Icon { size :: Maybe (Either4 Tiny Small Medium Large)
                    , icon :: Icons
                    , prefixedInInputField :: Maybe PrefixedInInputField
                    }

data PrefixedInInputField

icon :: forall r. Variadic Icon r => Icons -> r
icon i = liftVariadic $ wrap { size: Nothing
                             , icon: i
                             , prefixedInInputField: Nothing
                             }

instance variadicReturnIcon :: Variadic Icon Icon where
    liftVariadic = identity

materialIcons :: forall r. Variadic Class r => r
materialIcons = liftVariadic "material-icons"

-- | Keyword to prefix an `Icon` to a text input or Textarea.
prefixedInInputField :: PrefixedInInputField
prefixedInInputField = undefined

instance decorateIconIcons :: Decorate Icon Icons where
    decorate (Icon i) i' = wrap i { icon = i' }

instance decorateIconTiny :: Decorate Icon Tiny where
    decorate (Icon i) t = wrap i { size = pure $ in1 t }

instance decorateIconSmall :: Decorate Icon Small where
    decorate (Icon i) s = wrap i { size = pure $ in2 s }

instance decorateIconMedium :: Decorate Icon Medium where
    decorate (Icon i) m = wrap i { size = pure $ in3 m }

instance decorateIconLarge :: Decorate Icon Large where
    decorate (Icon i) l = wrap i { size = pure $ in4 l }

instance decorateIconPrefixed :: Decorate Icon PrefixedInInputField where
    decorate (Icon i) p = wrap i { prefixedInInputField = pure p }

instance markupableIcon :: Markupable Icon e where
    markupify (Icon { size: s, icon: i', prefixedInInputField: p }) = i
        ! classList do
            liftVariadic s
            materialIcons
            liftVariadic $ "prefix" <$ p
        $ text $ renderString i'

instance renderPrefixedInInputField :: Render PrefixedInInputField where
    render _ = render "prefix"

derive instance newtypeIcon :: Newtype Icon _
