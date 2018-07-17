module Materialize.Markup.Render where

import Data.Array (fromFoldable)
import Data.Either (Either, either)
import Data.Foldable (class Foldable)
import Data.List (List)
import Data.List.NonEmpty (NonEmptyList, foldMap, intercalate)
import Data.Maybe (Maybe, maybe)
import Data.NonEmpty (NonEmpty)
import Data.Tuple (Tuple(..))
import Prelude


-- | Renders something into a list of strings. Primarily used to render a list
-- | of CSS class strings.
class Render a where
    render :: a -> List String

instance renderString' :: Render String where
    render = pure

instance renderInt :: Render Int where
    render = pure <<< show

instance renderTuple :: (Render a, Render b) => Render (Tuple a b) where
    render (Tuple a b) = append <$> render a <*> render b

instance renderMaybe :: Render a => Render (Maybe a) where
    render = maybe mempty render

instance renderArray :: Render a => Render (Array a) where
    render = foldMap render

instance renderList :: Render a => Render (List a) where
    render = foldMap render

instance renderNonEmptyList :: Render a => Render (NonEmptyList a) where
    render = foldMap render

instance renderNonEmpty :: (Render a, Foldable f) => Render (NonEmpty f a) where
    render = foldMap render

instance renderEither :: (Render a, Render b) => Render (Either a b) where
    render = either render render

instance renderVoid :: Render Void where
    render = absurd

render' :: forall a. Render a => a -> Array String
render' = fromFoldable <<< render

renderString :: forall a. Render a => a -> String
renderString = intercalate " " <<< render
