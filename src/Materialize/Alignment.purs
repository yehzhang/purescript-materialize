{-|
See <https://materializecss.com/helpers.html>.
-}
module Materialize.Alignment where

import Data.Either (Either)
import Data.Either (Either(..)) as E
import Data.Either.Nested (Either3, in1, in2, in3)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<~), (~>))
import Materialize.Overriden (Left, Right)
import Materialize.Types (Class)


newtype Alignment = Alignment { vertical :: Maybe VerticalCenter
                              , horizontal :: Maybe HorizontalAlignment
                              }

type HorizontalAlignment = Either3 Left HorizontalCenter Right

data HorizontalCenter

data VerticalCenter

newtype Float = Float (Either Left Right)

align :: forall a r. Decorate Alignment a => Variadic Alignment r => a -> r
align a = liftVariadic $ a ~> wrap { vertical: Nothing
                                   , horizontal: Nothing
                                   }

instance variadicReturnAlignment :: Variadic Alignment Alignment where
    liftVariadic = identity

float :: forall a r. Decorate Float a => Variadic Float r => a -> r
float a = liftVariadic $ a ~> undefined

instance variadicReturnFloat :: Variadic Float Float where
  liftVariadic = identity

horizontalCenter :: HorizontalCenter
horizontalCenter = undefined

verticalCenter :: VerticalCenter
verticalCenter = undefined

noPadding :: forall r. Variadic Class r => r
noPadding = liftVariadic "no-padding"

instance decorateFloatLeft :: Decorate Float Left where
  decorate _ = wrap <<< E.Left

instance decorateFloatRight :: Decorate Float Right where
  decorate _ = wrap <<< E.Right

instance decorateAlignmentLeft :: Decorate Alignment Left where
    decorate (Alignment t) l = wrap t { horizontal = pure $ in1 l }

instance decorateAlignmentHorizontalCenter :: Decorate Alignment HorizontalCenter where
    decorate (Alignment t) c = wrap t { horizontal = pure $ in2 c }

instance decorateAlignmentRight :: Decorate Alignment Right where
    decorate (Alignment t) r = wrap t { horizontal = pure $ in3 r }

instance decorateAlignmentVerticalCenter :: Decorate Alignment VerticalCenter where
    decorate (Alignment t) v = wrap t { vertical = pure v }

instance renderAlignment :: Render Alignment where
    render (Alignment { vertical: v, horizontal: h }) =
        (render h <~ "align") <> render v

instance renderVerticalCenter :: Render VerticalCenter where
    render _ = render "valign-wrapper"

instance renderHorizontalCenter :: Render HorizontalCenter where
    render _ = render "center"

derive instance newtypeAlignment :: Newtype Alignment _

derive instance newtypeFloat :: Newtype Float _

derive newtype instance renderFloat :: Render Float
