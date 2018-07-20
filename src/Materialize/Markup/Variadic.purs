module Materialize.Markup.Variadic where

import Control.Monad.Free (Free)
import Data.List (List)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, unwrap, wrap)
import Prelude
import Text.Smolder.Markup (Attribute, MarkupM)
import Type.Prelude (class TypeEquals, from)

import Materialize.Markup.Decorate (class Decorate, decorate)
import Materialize.Markup.Dsl (ClassDsl, liftClassDsl)
import Materialize.Markup.Markupable (class Markupable, markupify)
import Materialize.Markup.Render (class Render, render, render', renderString)


-- | Returns different types depending on what the caller wants. Primarily used
-- | to return a "ClassDsl" when something is finished decorating. Sometimes
-- | used to return a "Text.Smolder.Markup.Markup".
{-
`r` depends on `a` so that the compiler knows when, for example, the return type
is `ClassDsl b`, there exists a unique argument type, i.e., `Render a => a`,
which is the expected behavior.

See https://stackoverflow.com/a/20040343/4435715 for more.
-}
class Variadic a r | r -> a where
    liftVariadic :: a -> r

newtype Decorator a = Decorator a

-- Uses `Decorator` to prevent directly applying `b` to `a` and to avoid
-- instance overlapping.
instance variadicDecorate' :: (Variadic a r, Decorate a b) => Variadic a (Decorator b -> r) where
    liftVariadic a = liftVariadic <<< decorate a <<< unwrap

instance variadicReturnListString :: Render a => Variadic a (List String) where
    liftVariadic = render

instance variadicReturnArrayString :: Render a => Variadic a (Array String) where
    liftVariadic = render'

instance variadicReturnString :: Render a => Variadic a String where
    liftVariadic = renderString

{-
Cannot just write `Variadic a (ClassDsl Unit)` as the compiler is not smart
enough to match instances other than `ClassDsl a`.

See
https://blog.infinitenegativeutility.com/2017/1/haskell-type-equality-constraints
for more.
-}
instance variadicReturnClassDsl :: (Render a, TypeEquals b Unit) => Variadic a (ClassDsl b) where
    liftVariadic = map from <<< liftClassDsl

instance variadicReturnMarkup :: (Markupable a e, TypeEquals b Unit) => Variadic a (Free (MarkupM e) b) where
    liftVariadic = map from <<< markupify

instance variadicReturnAtttribute :: Variadic Attribute Attribute where
    liftVariadic = identity

variadicDecorate :: forall a b. (Decorator a -> b) -> a -> b
variadicDecorate f = f <<< wrap

infixl 0 variadicDecorate as ~

variadicMaybeDecorate :: forall a b. (Decorator (Maybe a) -> b) -> Boolean -> a -> b
variadicMaybeDecorate f true b = f ~ pure b
variadicMaybeDecorate f _ _    = f ~ Nothing

infixl 9 variadicMaybeDecorate as ~?

derive instance newtypeDecorated :: Newtype (Decorator a) _
