-- | See <https://materializecss.com/grid.html>.
module Materialize.Grid where

import Data.List (List, reverse, (:))
import Data.Newtype (class Newtype, wrap)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<$~), (~>))
import Materialize.Types (Class)


newtype Column = Column { widths :: List Width
                        , offset :: List Offset
                        , push :: List Push
                        , pull :: List Pull
                        }

newtype Width = Width String

newtype Offset = Offset Width

newtype Push = Push Width

newtype Pull = Pull Width

row :: forall r. Variadic Class r => r
row = liftVariadic "row"

column :: forall a r. Decorate Column a => Variadic Column r => a -> r
column a = liftVariadic $ a ~> wrap { widths: mempty
                                    , offset: mempty
                                    , push: mempty
                                    , pull: mempty
                                    }

instance variadicReturnColumn :: Variadic Column Column where
    liftVariadic = identity

container :: forall r. Variadic Class r => r
container = liftVariadic "container"

section :: forall r. Variadic Class r => r
section = liftVariadic "section"

divider :: forall r. Variadic Class r => r
divider = liftVariadic "divider"

offset :: Width -> Offset
offset = wrap

push :: Width -> Push
push = wrap

pull :: Width -> Pull
pull = wrap

s1 :: Width
s1 = wrap "s1"

s2 :: Width
s2 = wrap "s2"

s3 :: Width
s3 = wrap "s3"

s4 :: Width
s4 = wrap "s4"

s5 :: Width
s5 = wrap "s5"

s6 :: Width
s6 = wrap "s6"

s7 :: Width
s7 = wrap "s7"

s8 :: Width
s8 = wrap "s8"

s9 :: Width
s9 = wrap "s9"

s10 :: Width
s10 = wrap "s10"

s11 :: Width
s11 = wrap "s11"

s12 :: Width
s12 = wrap "s12"

m1 :: Width
m1 = wrap "m1"

m2 :: Width
m2 = wrap "m2"

m3 :: Width
m3 = wrap "m3"

m4 :: Width
m4 = wrap "m4"

m5 :: Width
m5 = wrap "m5"

m6 :: Width
m6 = wrap "m6"

m7 :: Width
m7 = wrap "m7"

m8 :: Width
m8 = wrap "m8"

m9 :: Width
m9 = wrap "m9"

m10 :: Width
m10 = wrap "m10"

m11 :: Width
m11 = wrap "m11"

m12 :: Width
m12 = wrap "m12"

l1 :: Width
l1 = wrap "l1"

l2 :: Width
l2 = wrap "l2"

l3 :: Width
l3 = wrap "l3"

l4 :: Width
l4 = wrap "l4"

l5 :: Width
l5 = wrap "l5"

l6 :: Width
l6 = wrap "l6"

l7 :: Width
l7 = wrap "l7"

l8 :: Width
l8 = wrap "l8"

l9 :: Width
l9 = wrap "l9"

l10 :: Width
l10 = wrap "l10"

l11 :: Width
l11 = wrap "l11"

l12 :: Width
l12 = wrap "l12"

xl1 :: Width
xl1 = wrap "xl1"

xl2 :: Width
xl2 = wrap "xl2"

xl3 :: Width
xl3 = wrap "xl3"

xl4 :: Width
xl4 = wrap "xl4"

xl5 :: Width
xl5 = wrap "xl5"

xl6 :: Width
xl6 = wrap "xl6"

xl7 :: Width
xl7 = wrap "xl7"

xl8 :: Width
xl8 = wrap "xl8"

xl9 :: Width
xl9 = wrap "xl9"

xl10 :: Width
xl10 = wrap "xl10"

xl11 :: Width
xl11 = wrap "xl11"

xl12 :: Width
xl12 = wrap "xl12"

instance decorateColumnWidth :: Decorate Column Width where
    decorate (Column c@{ widths: ws }) w = wrap c { widths = w:ws }

instance decorateColumnOffset :: Decorate Column Offset where
    decorate (Column c@{ offset: os }) o = wrap c { offset = o:os }

instance decorateColumnPush :: Decorate Column Push where
    decorate (Column c@{ push: ps }) p = wrap c { push = p:ps }

instance decorateColumnPull :: Decorate Column Pull where
    decorate (Column c@{ pull: ps }) p = wrap c { pull = p:ps }

instance renderColumn :: Render Column where
    render (Column { widths: ws, offset: o, push: p, pull: p'}) = reverse $
        render p' <> render p <> render o <> render ws <> render "col"

instance renderOffset :: Render Offset where
    render (Offset w) = "offset" <$~ render w

instance renderPush :: Render Push where
    render (Push w) = "push" <$~ render w

instance renderPull :: Render Pull where
    render (Pull w) = "pull" <$~ render w

derive instance newtypeWidth :: Newtype Width _

derive newtype instance renderWidth :: Render Width

derive instance newtypeOffset :: Newtype Offset _

derive instance newtypePull :: Newtype Pull _

derive instance newtypePush :: Newtype Push _

derive instance newtypeColumn :: Newtype Column _
