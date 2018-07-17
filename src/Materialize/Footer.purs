{-|
See <https://materializecss.com/footer.html>.
-}
module Materialize.Footer where

import Materialize.Markup
import Materialize.Types (Class)


pageFooter :: forall r. Variadic Class r => r
pageFooter = liftVariadic "page-footer"

footerCopyright :: forall r. Variadic Class r => r
footerCopyright = liftVariadic "footer-copyright"
