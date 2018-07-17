module Materialize.Markup.Markupable where

import Text.Smolder.Markup (Markup)


class Markupable a e where
    markupify :: a -> Markup e
