module Materialize.Markup.Decorate where

import Data.Maybe (Maybe, maybe)
import Data.String (joinWith)
import Prelude


-- | Sets optional fields of a data type. Primarily used to craft a set of CSS
-- | classes related to one subject.
class Decorate a b where
    decorate :: a -> b -> a

infixl 4 decorate as <~

instance decorateString :: Decorate String String where
    decorate s s' = joinWith "-" [s, s']

instance maybeDecorate :: Decorate a b => Decorate a (Maybe b) where
    decorate a = maybe a $ decorate a
else
instance decorateFunctor :: (Functor f, Decorate a b) => Decorate (f a) b where
    decorate fa b = fa <#> decorateFlipped b

decorateFlipped :: forall a b. Decorate b a => a -> b -> b
decorateFlipped = flip decorate

infixr 4 decorateFlipped as ~>

functorDecorate :: forall f a b. Functor f => Decorate a b => a -> f b -> f a
functorDecorate = map <<< decorate

infixl 4 functorDecorate as <$~

functorDecorateFlipped :: forall f a b. Functor f => Decorate b a => f a -> b -> f b
functorDecorateFlipped = flip functorDecorate

infixr 4 functorDecorateFlipped as ~$>
