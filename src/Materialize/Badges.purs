{-|
See <https://materializecss.com/badges.html>.
-}
module Materialize.Badges where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap, unwrap)
import Data.Typelevel.Undefined (undefined)
import Prelude
import Text.Smolder.Markup (Attribute, attribute)

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render)


newtype Badge = Badge (Maybe New)

data New

badge :: forall r. Variadic Badge r => r
badge = liftVariadic $ wrap Nothing

instance variadicReturnBadge :: Variadic Badge Badge where
    liftVariadic = identity

new :: New
new = undefined

dataBadgeCaption :: String -> Attribute
dataBadgeCaption = attribute "data-badge-caption"

instance decorateBadgeNew :: Decorate Badge New where
    decorate _ = wrap <<< pure

instance renderBadge :: Render Badge where
    render b = render (unwrap b) <> render "badge"

instance renderNew :: Render New where
    render _ = render "new"

derive instance newtypeBadge :: Newtype Badge _
