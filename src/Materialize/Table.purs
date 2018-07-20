-- | See <https://materializecss.com/table.html>.
module Materialize.Table where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<~), (~>))
import Materialize.Overriden (Centered, Responsive)


newtype Table = Table { striped :: Maybe Striped
                      , highlight :: Maybe Highlight
                      , centered :: Maybe Centered
                      , responsive :: Maybe Responsive
                      }

data Striped

data Highlight

table :: forall a r. Decorate Table a => Variadic Table r => a -> r
table a = liftVariadic $ a ~> wrap { striped: Nothing
                                   , highlight: Nothing
                                   , centered: Nothing
                                   , responsive: Nothing
                                   }

instance variadicReturnTable :: Variadic Table Table where
   liftVariadic = identity

striped :: Striped
striped = undefined

highlight :: Highlight
highlight = undefined

instance decorateTableStriped :: Decorate Table Striped where
    decorate (Table t) s = wrap t { striped = pure s }

instance decorateTableHighlight :: Decorate Table Highlight where
    decorate (Table t) h = wrap t { highlight = pure h }

instance decorateTableCenter :: Decorate Table Centered where
    decorate (Table t) c = wrap t { centered = pure c }

instance decorateTableResponsive :: Decorate Table Responsive where
    decorate (Table t) r = wrap t { responsive = pure r }

instance renderTable :: Render Table where
    render (Table { striped: s, highlight: h, centered: c, responsive: r}) =
        render s
        <> render h
        <> render c
        <> (render r <~ "table")

instance renderStriped :: Render Striped where
    render _ = render "striped"

instance renderHighlight :: Render Highlight where
    render _ = render "highlight"

derive instance newtypeTable :: Newtype Table _
