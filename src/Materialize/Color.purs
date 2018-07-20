-- | See <https://materializecss.com/color.html>.
module Materialize.Color
    ( Hue
    , Shade
    , Color(..)
    , color
    , background
    , amber
    , black
    , blue
    , blueGrey
    , brown
    , cyan
    , deepOrange
    , deepPurple
    , green
    , grey
    , indigo
    , lightBlue
    , lightGreen
    , lime
    , orange
    , pink
    , purple
    , red
    , teal
    , transparent
    , white
    , yellow
    , darken
    , lighten
    , accent
    ) where

import Data.Maybe (Maybe(..))
import Data.Typelevel.Num (class LtEq, class Pos, D4, D5, toInt)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render, (<~))


data Hue = Amber
         | Black
         | Blue
         | BlueGrey
         | Brown
         | Cyan
         | DeepOrange
         | DeepPurple
         | Green
         | Grey
         | Indigo
         | LightBlue
         | LightGreen
         | Lime
         | Orange
         | Pink
         | Purple
         | Red
         | Teal
         | Transparent
         | White
         | Yellow

data Shade = Shade Variant Int

data Variant = Lighten
             | Darken
             | Accent

data Color = Color Hue (Maybe Shade)

color :: forall r. Variadic Color r => Hue -> r
color = liftVariadic <<< pureColor

background :: forall r. Variadic Color r => Hue -> r
background = color

instance variadicReturnColor :: Variadic Color Color where
    liftVariadic = identity

pureColor :: Hue -> Color
pureColor = flip Color Nothing

amber :: Hue
amber = Amber

black :: Hue
black = Black

blue :: Hue
blue = Blue

blueGrey :: Hue
blueGrey = BlueGrey

brown :: Hue
brown = Brown

cyan :: Hue
cyan = Cyan

deepOrange :: Hue
deepOrange = DeepOrange

deepPurple :: Hue
deepPurple = DeepPurple

green :: Hue
green = Green

grey :: Hue
grey = Grey

indigo :: Hue
indigo = Indigo

lightBlue :: Hue
lightBlue = LightBlue

lightGreen :: Hue
lightGreen = LightGreen

lime :: Hue
lime = Lime

orange :: Hue
orange = Orange

pink :: Hue
pink = Pink

purple :: Hue
purple = Purple

red :: Hue
red = Red

teal :: Hue
teal = Teal

transparent :: Hue
transparent = Transparent

white :: Hue
white = White

yellow :: Hue
yellow = Yellow

error :: Hue
error = red

darken :: forall d. Pos d => LtEq d D4 => d -> Shade
darken = Shade Darken <<< toInt

lighten :: forall d. Pos d => LtEq d D5 => d -> Shade
lighten = Shade Lighten <<< toInt

accent :: forall d. Pos d => LtEq d D4 => d -> Shade
accent = Shade Accent <<< toInt

instance decorateColorShade :: Decorate Color Shade where
    decorate c@(Color h s) s' = decorate' h s'
      where
        decorate' Brown (Shade Accent _)    = pureColor error
        decorate' Grey (Shade Accent _)     = pureColor error
        decorate' BlueGrey (Shade Accent _) = pureColor error
        decorate' Black _                   = pureColor error
        decorate' White _                   = pureColor error
        decorate' Transparent _             = pureColor error
        decorate' h' s''                    = Color h' $ Just s''

instance renderColor :: Render Color where
    render (Color h s) = render h <> render s

instance renderHue :: Render Hue where
    render h = pure case h of
        Amber       -> "amber"
        Black       -> "black"
        Blue        -> "blue"
        BlueGrey    -> "blue-grey"
        Brown       -> "brown"
        Cyan        -> "cyan"
        DeepOrange  -> "deep-orange"
        DeepPurple  -> "deep-purple"
        Green       -> "green"
        Grey        -> "grey"
        Indigo      -> "indigo"
        LightBlue   -> "light-blue"
        LightGreen  -> "light-green"
        Lime        -> "lime"
        Orange      -> "orange"
        Pink        -> "pink"
        Purple      -> "purple"
        Red         -> "red"
        Teal        -> "teal"
        Transparent -> "transparent"
        White       -> "white"
        Yellow      -> "yellow"

instance renderShade :: Render Shade where
    render (Shade v i) = render v <~ show i

instance renderVariant :: Render Variant where
    render v = pure case v of
        Lighten -> "lighten"
        Darken  -> "darken"
        Accent  -> "accent"

derive instance eqHue :: Eq Hue
