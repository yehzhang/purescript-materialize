{-|
See <https://materializecss.com/radio-buttons.html>.
-}
module Materialize.Forms.RadioButtons where

import Materialize.Markup (class Variadic, liftVariadic)
import Materialize.Types (Class)


withGap :: forall r. Variadic Class r => r
withGap = liftVariadic "with-gap"
