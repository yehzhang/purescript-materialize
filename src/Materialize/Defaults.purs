-- | See <https://materializecss.com/helpers.html>.
module Materialize.Defaults where

import Materialize.Markup (class Variadic, liftVariadic)
import Materialize.Types (Class)


browserDefault :: forall r. Variadic Class r => r
browserDefault = liftVariadic "browser-default"
