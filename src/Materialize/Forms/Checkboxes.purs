{-|
See <https://materializecss.com/checkboxes.html>, and
<https://materializecss.com/switches.html>.
-}
module Materialize.Forms.Checkboxes where

import Materialize.Markup
import Materialize.Types (Class)


filledIn :: forall r. Variadic Class r => r
filledIn = liftVariadic "filled-in"

switch :: forall r. Variadic Class r => r
switch = liftVariadic "switch"

lever :: forall r. Variadic Class r => r
lever = liftVariadic "lever"
