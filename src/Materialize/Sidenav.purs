{-|
See <https://materializecss.com/sidenav.html>.
-}
module Materialize.Sidenav where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<$~))
import Materialize.Overriden (Fixed)
import Materialize.Types (Class)


newtype Sidenav = Sidenav (Maybe Fixed)

sidenav :: forall r. Variadic Sidenav r => r
sidenav = liftVariadic $ wrap Nothing

instance variadicReturnSidenav :: Variadic Sidenav Sidenav where
    liftVariadic = identity

sidenavTrigger :: forall r. Variadic Class r => r
sidenavTrigger = liftVariadic "sidenav-trigger"

subheader :: forall r. Variadic Class r => r
subheader = liftVariadic "subheader"

sidenavBackground :: forall r. Variadic Class r => r
sidenavBackground = liftVariadic "background"

userView :: forall r. Variadic Class r => r
userView = liftVariadic "user-view"

sidenavClose :: forall r. Variadic Class r => r
sidenavClose = liftVariadic "sidenav-close"

instance decorateSidenavFixed :: Decorate Sidenav Fixed where
    decorate _ = wrap <<< pure

instance renderSidenav :: Render Sidenav where
    render (Sidenav f) = ("sidenav" <$~ render f) <> render "sidenav"

derive instance newtypeSidenav :: Newtype Sidenav _
