-- | See <https://materializecss.com/waves.html>.
module Materialize.Waves where

import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude

import Materialize.Color (Color)
import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<$~))
import Materialize.Overriden (Circular)


newtype Waves = Waves { color :: Maybe (Either Color Light)
                      , circular :: Maybe Circular
                      , displayBlock :: Maybe DisplayBlock
                      }

data Light

data DisplayBlock

waves :: forall r. Variadic Waves r => r
waves = liftVariadic $ wrap { color: Nothing
                            , circular: Nothing
                            , displayBlock: Nothing
                            }

displayBlock :: DisplayBlock
displayBlock = undefined

light :: Light
light = undefined

instance variadicReturnWaves :: Variadic Waves Waves where
    liftVariadic = identity

instance decorateWavesColor :: Decorate Waves Color where
    decorate (Waves w) c = wrap w { color = pure $ Left c }

instance decorateWavesLight :: Decorate Waves Light where
    decorate (Waves w) l = wrap w { color = pure $ Right l }

instance decorateWavesCircular :: Decorate Waves Circular where
    decorate (Waves w) c = wrap w { circular = pure c }

instance decorateWavesDisplayBlock :: Decorate Waves DisplayBlock where
    decorate (Waves w) b = wrap w { displayBlock = pure b }

instance renderWaves :: Render Waves where
    render (Waves { color: c, circular: c', displayBlock: b }) = "waves" <$~
        render "effect"
        <> render ("circle" <$ c')
        <> render ("block" <$ b)
        <> render c

instance renderLight :: Render Light where
    render _ = render "light"

derive instance newtypeWaves :: Newtype Waves _
