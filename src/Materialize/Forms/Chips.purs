-- | See <https://materializecss.com/chips.html>.
module Materialize.Forms.Chips where

import Materialize.Markup (class Variadic, liftVariadic)
import Materialize.Types (Class)


chip :: forall r. Variadic Class r => r
chip = liftVariadic "chip"
