-- | See <https://materializecss.com/dropdown.html>.
module Materialize.Dropdown where

import Text.Smolder.Markup (Attribute, attribute)

import Materialize.Markup (class Variadic, liftVariadic)
import Materialize.Types (Class, CssId)


dropdownContent :: forall r. Variadic Class r => r
dropdownContent = liftVariadic "dropdown-content"

dataDropdownTarget :: CssId -> Attribute
dataDropdownTarget = attribute "data-target"
