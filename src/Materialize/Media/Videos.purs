-- | See <https://materializecss.com/media-css.html> and
-- | <https://materializecss.com/media.html>.
module Materialize.Media.Videos where

import Data.Maybe (Maybe)
import Data.Newtype (class Newtype, wrap)
import Prelude

import Materialize.Markup (class Render, class Variadic, liftVariadic, render, (<~))
import Materialize.Overriden (Responsive)


newtype Video = Video { embedded :: Embedded
                      , responsive :: Maybe Responsive
                      }

type Embedded = Boolean

video :: forall r. Variadic Video r => Responsive -> Embedded -> r
video r e = liftVariadic $ wrap { embedded: e
                                , responsive: pure r
                                }

instance variadicReturnVideo :: Variadic Video Video where
    liftVariadic = identity

instance renderVideo :: Render Video where
    render (Video { embedded: e, responsive: r }) = render' e
      where
        render' true = render $ "video-container" <$ r
        render' _    = render r <~ "video"

derive instance newtypeVideo :: Newtype Video _
