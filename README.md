# purescript-materialize

[![Build Status](https://travis-ci.com/yehzhang/purescript-materialize.svg?branch=master)](https://travis-ci.com/yehzhang/purescript-materialize)
[![Latest release](https://img.shields.io/github/release/yehzhang/purescript-materialize.svg)](https://github.com/yehzhang/purescript-materialize/releases)

[Materialize](https://materializecss.com/) bindings in PureScript, with a
builtin [purescript-smolder](https://github.com/bodil/purescript-smolder)-style
DSL.

## Overview

### Class DSL

Class DSL is a domain-specific language that makes it easy to markup Materialize
CSS classes.

A statement in Class DSL starts with a subject, followed by required objects

```purescript
import Materialize.Color (Color, background, teal)

color :: Color
color = background teal
```

or optional objects.

```purescript
import Materialize.Buttons (Button, button, floating)
import Materialize.Markup ((~))
import Materialize.Overriden (large)

plainButton :: Button
plainButton = button

largeButton :: Button
largeButton = button ~ large

floatingButton :: Button
floatingButton = button ~ floating

largeFloatingButton :: Button
largeFloatingButton = button ~ large ~ floating
```

Class DSL is meant to be spoken along with Smolder DSL. Here is an example to
describe a complex [Button](https://materializecss.com/buttons.html):

```purescript
import Data.Typelevel.Num (d1)
import Text.Smolder.Markup (Markup, text, (!))
import Text.Smolder.HTML (div)
import Prelude

import Materialize.Buttons (button, floating)
import Materialize.Color (background, teal, lighten)
import Materialize.Markup (classList, (~))
import Materialize.Overriden (large)
import Materialize.Visibility (hide, on)
import Materialize.Waves (waves, light)


viewButton :: forall e. Markup e
viewButton =
    div ! classList do
            button ~ large ~ floating
            background teal ~ lighten d1
            waves ~ light
            hide ~ on large
        $ text "Click me"
```

which renders to HTML:

```html
<div class="btn-large btn-floating teal lighten-1 waves-effect waves-light hide-on-large-only">
    Click me
</div>
```

See [test cases](https://github.com/yehzhang/purescript-materialize/blob/master/test/Main.purs)
for more examples.

### DOM API

Some material designs cannot be implemented with pure CSS, e.g.,
[Tooltips](https://materializecss.com/tooltips.html). Therefore, it is sometimes
inevitable to interact with Materialize's API in JavaScript. Hopefully, included
is a PureScript API that abstracts away the DOM manipulation required by the
Materialize API.

```purescript
import Data.Traversable (traverse)
import Effect (Effect)
import Prelude
import Web.DOM.ParentNode (ParentNode)

import Materialize.DOM (findElements, findInstances, init, open, destroy)
import Materialize.Tooltips (Tooltip)


initTooltipsAndOpen :: Effect ParentNode -> Effect Unit
initTooltipsAndOpen parentNode = do
    _ :: Array Tooltip <- parentNode >>= findElements
        >>= traverse (init { enterDelay: 400.0
                           , outDuration: 40.0
                           })
        >>= traverse open
    pure unit

destroyTooltips :: Effect ParentNode -> Effect Unit
destroyTooltips parentNode = do
    _ :: Array Tooltip <- parentNode >>= findInstances >>= traverse destroy
    pure unit
```

## Supported modules

### CSS

- [x] [Color](https://materializecss.com/color.html)
- [x] [Grid](https://materializecss.com/grid.html)
- [x] [Helpers](https://materializecss.com/helpers.html)
- [x] [Media](https://materializecss.com/media-css.html)
- [x] [Pulse](https://materializecss.com/pulse.html)
- [x] [Shadow](https://materializecss.com/shadow.html)
- [x] [Table](https://materializecss.com/table.html)
- [x] [Transitions](https://materializecss.com/css-transitions.html)
- [x] [Typography](https://materializecss.com/typography.html)

### Components

- [x] [Badges](https://materializecss.com/badges.html)
- [x] [Buttons](https://materializecss.com/buttons.html)
- [x] [Breadcrumbs](https://materializecss.com/breadcrumbs.html)
- [x] [Cards](https://materializecss.com/cards.html)
- [x] [Collections](https://materializecss.com/collections.html)
- [x] [Floating Action Button](https://materializecss.com/floating-action-button.html) (Class only)
- [x] [Footer](https://materializecss.com/footer.html)
- [x] [Icons](https://materializecss.com/icons.html)
- [x] [Navbar](https://materializecss.com/navbar.html)
- [x] [Pagination](https://materializecss.com/pagination.html)
- [x] [Preloader](https://materializecss.com/preloader.html)

### JavaScript

- [x] [Auto Init](https://materializecss.com/auto-init.html)
- [x] [Carousel](https://materializecss.com/carousel.html) (Class only)
- [ ] Collapsible
- [ ] Dropdown
- [ ] FeatureDiscovery
- [x] [Media](https://materializecss.com/media.html) (Class only)
- [ ] Modals
- [ ] Parallax
- [ ] Pushpin
- [ ] Scrollspy
- [ ] Sidenav
- [ ] Tabs
- [x] [Toasts](https://materializecss.com/toasts.html)
- [x] [Tooltips](https://materializecss.com/tooltips.html)
- [x] [Waves](https://materializecss.com/waves.html)

### Forms

- [ ] Autocomplete
- [x] [Checkboxes](https://materializecss.com/checkboxes.html)
- [x] [Chips](https://materializecss.com/chips.html)
- [ ] Pickers
- [x] [Radio Buttons](https://materializecss.com/radio-buttons.html)
- [ ] Range
- [x] [Select](https://materializecss.com/select.html)
- [x] [Switches](https://materializecss.com/switches.html)
- [x] [Text Inputs](https://materializecss.com/text-inputs.html) (Class only)

(Pull requests are welcomed) :)

## Installation

```
bower install purescript-materialize
```

Additionally, Materialize 1.0.0-rc needs to be installed. An easy way is to add
the following line into the `<body>` block of `index.html`, before the
`<script>` tag of PureScript code:

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
```

There are other ways to install Materialize, but please make sure that the
gloabl Materialize object `M` is available.

## Documentation

Module documentation is [published on Pursuit](https://pursuit.purescript.org/packages/purescript-materialize).
