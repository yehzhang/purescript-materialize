module Materialize.Markup.Dsl
    ( ClassDsl
    , liftClassDsl
    , classList
    , renderClasses
    ) where

import Control.Monad.Writer (Writer, execWriter, tell)
import Data.List (List)
import Data.Newtype (class Newtype, unwrap, wrap)
import Prelude
import Text.Smolder.HTML.Attributes (className) as A
import Text.Smolder.Markup (Attribute)

import Materialize.Markup.Render (class Render, render, renderString)


newtype ClassDsl a = ClassDsl (Writer (List String) a)

derive instance newtypeClassDsl :: Newtype (ClassDsl a) _

derive newtype instance functorClassDsl :: Functor ClassDsl

derive newtype instance applyClassDsl :: Apply ClassDsl

derive newtype instance applicativeClassDsl :: Applicative ClassDsl

derive newtype instance bindClassDsl :: Bind ClassDsl

derive newtype instance monadClassDsl :: Monad ClassDsl

liftClassDsl :: forall c. Render c => c -> ClassDsl Unit
liftClassDsl = wrap <<< tell <<< render

instance renderClassDsl :: Render (ClassDsl a) where
    render = execWriter <<< unwrap

classList :: forall a. ClassDsl a -> Attribute
classList = A.className <<< renderString

renderClasses :: forall a. ClassDsl a -> String
renderClasses = renderString
