{-|
Keywords on which other modules depend to construct CSS classes.
-}
module Materialize.Overriden where

import Data.Typelevel.Undefined (undefined)

import Materialize.Markup (class Render, render)


data Disabled

data Active

data Left

data Right

data Centered

data Tiny

data Small

data Medium

data Large

data ExtraLarge

data Responsive

data Top

data Bottom

data Fixed

data Circular

data Linear

linear :: Linear
linear = undefined

circular :: Circular
circular = undefined

fixed :: Fixed
fixed = undefined

bottom :: Bottom
bottom = undefined

top :: Top
top = undefined

responsive :: Responsive
responsive = undefined

disabled :: Disabled
disabled = undefined

active :: Active
active = undefined

left :: Left
left = undefined

right :: Right
right = undefined

centered :: Centered
centered = undefined

tiny :: Tiny
tiny = undefined

small :: Small
small = undefined

medium :: Medium
medium = undefined

large :: Large
large = undefined

extraLarge :: ExtraLarge
extraLarge = undefined

mobile :: Small
mobile = small

tablet :: Medium
tablet = medium

desktop :: Large
desktop = large

largeDesktop :: ExtraLarge
largeDesktop = extraLarge

instance renderCircular :: Render Circular where
    render _ = render "circular"

instance renderLinear :: Render Linear where
    render _ = render "linear"

instance renderFixed :: Render Fixed where
    render _ = render "fixed"

instance renderBottom :: Render Bottom where
    render _ = render "bottom"

instance renderTop :: Render Top where
    render _ = render "top"

instance renderResponsive :: Render Responsive where
    render _ = render "responsive"

instance renderLeft :: Render Left where
    render _ = render "left"

instance renderRight :: Render Right where
    render _ = render "right"

instance renderCenter :: Render Centered where
    render _ = render "centered"

instance renderActive :: Render Active where
    render _ = render "active"

instance renderDisabled :: Render Disabled where
    render _ = render "disabled"

instance renderTiny :: Render Tiny where
    render _ = render "tiny"

instance renderSmall :: Render Small where
    render _ = render "small"

instance renderMedium :: Render Medium where
    render _ = render "medium"

instance renderLarge :: Render Large where
    render _ = render "large"

instance renderExtraLarge :: Render ExtraLarge where
    render _ = render "extra-large"
