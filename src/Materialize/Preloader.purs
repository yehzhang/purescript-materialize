{-|
See <https://materializecss.com/preloader.html>.
-}
module Materialize.Preloader where

import Data.Either (Either(..))
import Data.Functor (voidRight)
import Data.Int (ceil)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude hiding (div)
import Text.Smolder.HTML (div)
import Text.Smolder.HTML.Attributes (className, style)
import Text.Smolder.Markup (empty, (!))

import Materialize.Alignment (float)
import Materialize.Color (Hue, blue, green, red, yellow)
import Materialize.Markup (class Decorate, class Render, class Variadic, classList, liftVariadic, render, renderString, (<~))
import Materialize.Markup.Markupable (class Markupable)
import Materialize.Overriden (Active, Circular, Large, Linear, Small, left, right)
import Materialize.Types (Class)


newtype LinearPreloader = LinearPreloader (Maybe Progress)

-- | A number between 0.0 and 1.0, inclusive
type Progress = Number

newtype CircularPreloader = CircularPreloader
    { style :: Maybe (Either Hue Flashing)
    , wrapper :: PreloaderWrapper
    }

data Flashing

newtype PreloaderWrapper = PreloaderWrapper { size :: Maybe (Either Small Large)
                                            , active :: Maybe Active
                                            }

class VariadicPreloader a r | a -> r where
    liftVariadicPreloader :: a -> r

preloader :: forall a r. VariadicPreloader a r => a -> r
preloader = liftVariadicPreloader

instance variadicPreloaderMakeLinear :: Variadic LinearPreloader r => VariadicPreloader Linear r where
    liftVariadicPreloader _ = liftVariadic $ wrap Nothing

instance variadicPreloaderMakeCircular :: Variadic CircularPreloader r => VariadicPreloader Circular r where
    liftVariadicPreloader _ = liftVariadic $ wrap { style: Nothing
                                                  , wrapper: preloaderWrapper
                                                  }

instance variadicReturnLinearPreloader :: Variadic LinearPreloader LinearPreloader where
    liftVariadic = identity

instance variadicReturnCircularPreloader :: Variadic CircularPreloader CircularPreloader where
    liftVariadic = identity

instance markupableLinearPreloader :: Markupable LinearPreloader e where
    markupify p = div ! className progress $ markupProgress $ unwrap p
      where
        markupProgress (Just i) = div
            ! className determinate
            ! style ("width: " <> show (toPercentage i) <> "%")
            $ empty
        markupProgress _        = div ! className indeterminate $ empty

        toPercentage = clamp 0 100 <<< ceil <<< mul 100.0

instance markupableCircularPreloader :: Markupable CircularPreloader e where
    markupify (CircularPreloader { style: s, wrapper: w }) =
        div ! className (renderString w) $ markupSpinners s
      where
        markupSpinners (Just (Left h)) = markupSpinner h true
        markupSpinners (Just (Right _)) = do
            markupSpinner blue false
            markupSpinner red false
            markupSpinner yellow false
            markupSpinner green false
        markupSpinners Nothing = markupSpinner undefined undefined

        markupSpinner h o = div
            ! classList do
                spinnerLayer
                case o of
                    true  | h == red    -> spinnerRedOnly
                          | h == green  -> spinnerGreenOnly
                          | h == yellow -> spinnerYellowOnly
                          | h == blue   -> spinnerBlueOnly
                    false | h == red    -> spinnerRed
                          | h == green  -> spinnerGreen
                          | h == yellow -> spinnerYellow
                          | h == blue   -> spinnerBlue
                    _                   -> pure unit
            $ do
                div
                    ! classList do
                        circleClipper
                        float left
                    $ circleDiv
                div ! className gapPatch $ circleDiv
                div
                    ! classList do
                        circleClipper
                        float right
                    $ circleDiv

        circleDiv = div ! className circle $ empty

flashing :: Flashing
flashing = undefined

progress :: forall r. Variadic Class r => r
progress = liftVariadic "progress"

determinate :: forall r. Variadic Class r => r
determinate = liftVariadic "determinate"

indeterminate :: forall r. Variadic Class r => r
indeterminate = liftVariadic "indeterminate"

preloaderWrapper :: forall r. Variadic PreloaderWrapper r => r
preloaderWrapper = liftVariadic $ wrap { size: Nothing
                                       , active: Nothing
                                       }

instance variadicReturnPreloaderWrapper :: Variadic PreloaderWrapper PreloaderWrapper where
    liftVariadic = identity

circle :: forall r. Variadic Class r => r
circle = liftVariadic "circle"

spinnerLayer :: forall r. Variadic Class r => r
spinnerLayer = liftVariadic "spinner-layer"

circleClipper :: forall r. Variadic Class r => r
circleClipper = liftVariadic "circle-clipper"

gapPatch :: forall r. Variadic Class r => r
gapPatch = liftVariadic "gap-patch"

spinnerBlueOnly :: forall r. Variadic Class r => r
spinnerBlueOnly = liftVariadic "spinner-blue-only"

spinnerRedOnly :: forall r. Variadic Class r => r
spinnerRedOnly = liftVariadic "spinner-red-only"

spinnerYellowOnly :: forall r. Variadic Class r => r
spinnerYellowOnly = liftVariadic "spinner-yellow-only"

spinnerGreenOnly :: forall r. Variadic Class r => r
spinnerGreenOnly = liftVariadic "spinner-green-only"

spinnerBlue :: forall r. Variadic Class r => r
spinnerBlue = liftVariadic "spinner-blue"

spinnerRed :: forall r. Variadic Class r => r
spinnerRed = liftVariadic "spinner-red"

spinnerYellow :: forall r. Variadic Class r => r
spinnerYellow = liftVariadic "spinner-yellow"

spinnerGreen :: forall r. Variadic Class r => r
spinnerGreen = liftVariadic "spinner-green"

big :: forall r. Variadic Class r => r
big = liftVariadic "big"

instance decorateLinearPreloaderProgress :: Decorate LinearPreloader Number where
    decorate _ = wrap <<< pure

instance decorateCircularPreloaderHue :: Decorate CircularPreloader Hue where
    decorate (CircularPreloader c) h = wrap c { style = pure $ Left h }

instance decorateCircularPreloaderFlashing :: Decorate CircularPreloader Flashing where
    decorate (CircularPreloader c) f = wrap c { style = pure $ Right f }

instance decorateCircularPreloaderActive :: Decorate CircularPreloader Active where
    decorate (CircularPreloader c@{ wrapper: w }) a = wrap c { wrapper = w <~ a }

instance decorateCircularPreloaderSmall :: Decorate CircularPreloader Small where
    decorate (CircularPreloader c@{ wrapper: w }) s = wrap c { wrapper = w <~ s }

instance decorateCircularPreloaderLarge :: Decorate CircularPreloader Large where
    decorate (CircularPreloader c@{ wrapper: w }) l = wrap c { wrapper = w <~ l }

instance decoratePreloaderWrapperActive :: Decorate PreloaderWrapper Active where
    decorate (PreloaderWrapper c) a = wrap c { active = pure a }

instance decoratePreloaderWrapperSmall :: Decorate PreloaderWrapper Small where
    decorate (PreloaderWrapper c) s = wrap c { size = pure $ Left s }

instance decoratePreloaderWrapperLarge :: Decorate PreloaderWrapper Large where
    decorate (PreloaderWrapper c) l = wrap c { size = pure $ Right l }

instance renderPreloaderWrapper :: Render PreloaderWrapper where
    render (PreloaderWrapper { size: s, active: a }) =
        render a <> render (voidRight "big" <$> s) <> render "preloader-wrapper"

derive instance newtypeLinearPreloader :: Newtype LinearPreloader _

derive instance newtypeCircularPreloader :: Newtype CircularPreloader _

derive instance newtypePreloaderWrapper :: Newtype PreloaderWrapper _
