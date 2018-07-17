{-|
See <https://materializecss.com/navbar.html>, and
<https://materializecss.com/breadcrumbs.html>.
-}
module Materialize.Navbar where

import Materialize.Markup (class Variadic, liftVariadic)
import Materialize.Overriden (Active)
import Materialize.Types (Class)


navWrapper :: forall r. Variadic Class r => r
navWrapper = liftVariadic "nav-wrapper"

navExtended :: forall r. Variadic Class r => r
navExtended = liftVariadic "nav-extended"

navContent :: forall r. Variadic Class r => r
navContent = liftVariadic "nav-content"

navbarFixed :: forall r. Variadic Class r => r
navbarFixed = liftVariadic "navbar-fixed"

navTitle :: forall r. Variadic Class r => r
navTitle = liftVariadic "nav-title"

navItem :: forall r. Variadic Active r => Active -> r
navItem = liftVariadic

breadcrumb :: forall r. Variadic Class r => r
breadcrumb  = liftVariadic "breadcrumb"

brandLogo :: forall r. Variadic Class r => r
brandLogo = liftVariadic "brand-logo"
