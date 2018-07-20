-- | See <https://materializecss.com/select.html>.
module Materialize.Forms.Select where

import Text.Smolder.Markup (Attribute, attribute)

import Materialize.Markup (class Variadic, liftVariadic)
import Materialize.Types (Class, Path)


selectInputField :: forall r. Variadic Class r => r
selectInputField = liftVariadic "input-field"

dataOptionIcon :: Path -> Attribute
dataOptionIcon = attribute "data-icon"
