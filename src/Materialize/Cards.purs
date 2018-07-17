{-|
See <https://materializecss.com/cards.html>.
-}
module Materialize.Cards where

import Data.Either.Nested (Either3, in1, in2, in3)
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render)
import Materialize.Overriden (Large, Medium, Small)
import Materialize.Types (Class)


newtype Card = Card { horizontal :: Maybe Horizontal
                    , stickyAction :: Maybe StickyAction
                    , size :: Maybe (Either3 Small Medium Large)
                    , hoverable :: Maybe Hoverable
                    , panel :: Maybe Panel
                    }

data Horizontal

data StickyAction

data Hoverable

data Panel

card :: forall r. Variadic Card r => r
card = liftVariadic $ wrap { horizontal: Nothing
                          , stickyAction: Nothing
                          , size: Nothing
                          , hoverable: Nothing
                          , panel: Nothing
                          }

instance variadicReturnCard :: Variadic Card Card where
    liftVariadic = identity

horizontal :: Horizontal
horizontal = undefined

cardContent :: forall r. Variadic Class r => r
cardContent = liftVariadic "card-content"

cardTitle :: forall r. Variadic Class r => r
cardTitle = liftVariadic "card-title"

cardAction :: forall r. Variadic Class r => r
cardAction = liftVariadic "card-action"

cardImage :: forall r. Variadic Class r => r
cardImage = liftVariadic "card-image"

cardStacked :: forall r. Variadic Class r => r
cardStacked = liftVariadic "card-stacked"

cardReveal :: forall r. Variadic Class r => r
cardReveal = liftVariadic "card-reveal"

activator :: forall r. Variadic Class r => r
activator = liftVariadic "activator"

stickyAction :: StickyAction
stickyAction = undefined

cardTabs :: forall r. Variadic Class r => r
cardTabs = liftVariadic "card-tabs"

hoverable :: Hoverable
hoverable = undefined

panel :: Panel
panel = undefined

instance decorateCardHorizontal :: Decorate Card Horizontal where
    decorate (Card c) h = wrap c { horizontal = pure h }

instance decorateCardStickyAction :: Decorate Card StickyAction where
    decorate (Card c) s = wrap c { stickyAction = pure s }

instance decorateCardSmall :: Decorate Card Small where
    decorate (Card c) s = wrap c { size = pure $ in1 s }

instance decorateCardMedium :: Decorate Card Medium where
    decorate (Card c) m = wrap c { size = pure $ in2 m }

instance decorateCardLarge :: Decorate Card Large where
    decorate (Card c) l = wrap c { size = pure $ in3 l }

instance decorateCardHoverable :: Decorate Card Hoverable where
    decorate (Card c) h = wrap c { hoverable = pure h }

instance decorateCardPanel :: Decorate Card Panel where
    decorate (Card c) p = wrap c { panel = pure p }

instance renderCard :: Render Card where
    render (Card { horizontal: h
                 , stickyAction: s
                 , size: s'
                 , hoverable: h'
                 , panel: p
                 }) =
        render h'
        <> render s'
        <> render h
        <> render s
        <> (render $ fromMaybe "card" $ "card-panel" <$ p)

instance renderHorizontal :: Render Horizontal where
    render _ = render "horizontal"

instance renderStickyAction :: Render StickyAction where
    render _ = render "sticky-action"

instance renderHoverable :: Render Hoverable where
    render _ = render "hoverable"

derive instance newtypeCard :: Newtype Card _
