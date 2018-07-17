module Test.Main where

import Data.Typelevel.Num (d0, d1, d3, d4, d5)
import Effect (Effect)
import Prelude hiding (div, top, show)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (run)
import Text.Smolder.Renderer.String (render) as S
import Text.Smolder.HTML (div, i)
import Text.Smolder.HTML.Attributes (className, style)
import Text.Smolder.Markup (attribute, empty, (!))
import Text.Smolder.Markup (text) as H

import Materialize.Alignment (align, float, horizontalCenter, verticalCenter)
import Materialize.Badges (badge, new)
import Materialize.Buttons (button, flat, floating, halfwayFab, pulse, raised)
import Materialize.Cards (card, horizontal, hoverable, panel, stickyAction)
import Materialize.Collections (avatar, collection, collectionItem, header)
import Materialize.Color (Color, accent, brown, color, darken, green, lightBlue, lighten, purple, red, teal, yellow)
import Materialize.Forms.TextInputs (file, inputField)
import Materialize.Grid (column, l4, l5, m2, m3, offset, pull, push, s1, s7, xl4, xl6)
import Materialize.Icons (icon, prefixedInInputField)
import Materialize.Icons.Data (threeDRotation, acUnit)
import Materialize.Markup (ClassDsl, render', renderString, (~))
import Materialize.Media.Carousel (carousel, carouselItem, fullWidthSlider)
import Materialize.Media.Images (image, materialBoxed)
import Materialize.Media.Slider (fullscreen, slider)
import Materialize.Media.Videos (video)
import Materialize.Overriden (active, centered, circular, disabled, fixed, large, left, linear, medium, responsive, right, small, tablet, tiny, top)
import Materialize.Preloader (flashing, preloader)
import Materialize.Shadow (shadow, zDepth)
import Materialize.Sidenav (sidenav)
import Materialize.Table (highlight, striped, table)
import Materialize.Text (flow, text, truncate)
import Materialize.Tooltips (dataTooltipPosition)
import Materialize.Transitions (in', out, scale)
import Materialize.Visibility (hide, on, show)
import Materialize.Waves (displayBlock, light, waves)


main :: Effect Unit
main = run [consoleReporter] do
    describe "Class DSL" do
        it "should render classes into an array" do
            render' :: ClassDsl Unit -> Array String do
                    color brown ~ lighten d3
                    color purple ~ accent d1
                `shouldEqual` ["brown", "lighten-3", "purple", "accent-1"]

        it "should render classes into a string" do
            renderString :: ClassDsl Unit -> String do
                    color brown ~ lighten d3
                    color purple ~ accent d1
                `shouldEqual` "brown lighten-3 purple accent-1"

    describe "Color" do
        it "should render pure color" do
            color red `shouldEqual` "red"

        it "should render shaded color" do
            (color green ~ lighten d5) `shouldEqual` "green lighten-5"
            (color yellow ~ accent d1) `shouldEqual` "yellow accent-1"

    describe "Grid" do
        it "should render a simple grid" do
            (column s1) `shouldEqual` "col s1"

        it "should render complex grids" do
            let actual = column s1
                       ~ m2
                       ~ offset m3
                       ~ offset l4
                       ~ pull l5
                       ~ pull xl6
                       ~ push xl4
                       ~ push s7
            let expected = [ "col"
                           , "s1"
                           , "m2"
                           , "offset-m3"
                           , "offset-l4"
                           , "push-xl4"
                           , "push-s7"
                           , "pull-l5"
                           , "pull-xl6"
                           ]
            actual `shouldEqual` expected

    describe "Button" do
        it "should render a button" do
            button `shouldEqual` "btn"

        it "should render a disabled, large, floating, halfway-FAB button with pulse" do
            (button ~ flat ~ large ~ floating ~ halfwayFab ~ disabled ~ pulse)
                `shouldEqual` "disabled btn-large btn-floating halfway-fab pulse"

        it "should render a small, flat button" do
            (button ~ small ~ flat) `shouldEqual` "btn-small btn-flat"

        it "should render a raised button" do
            (button ~ flat ~ raised) `shouldEqual` "btn"

    describe "Card" do
        it "should render a card" do
            card `shouldEqual` "card"

        it "should render a hoverable, small, horizontal, sticky-action card panel" do
            (card ~ horizontal ~ small ~ hoverable ~ stickyAction ~ panel)
                `shouldEqual`
                    "hoverable small horizontal sticky-action card-panel"

        it "should render a large card" do
            (card ~ large) `shouldEqual` "large card"

        it "should render a medium card" do
            (card ~ large ~ medium) `shouldEqual` "medium card"

    describe "Collection" do
        it "should render a collection" do
            collection `shouldEqual` "collection"

        it "should render a collection with header" do
            (collection ~ header) `shouldEqual` "collection with-header"

        it "should render a item" do
            collectionItem `shouldEqual` "collection-item"

        it "should render an active item with avatar" do
            (collectionItem ~ active ~ avatar) `shouldEqual`
                "active collection-item avatar"

    describe "Visibility" do
        it "should render hide on small" do
            (hide ~ on small) `shouldEqual` "hide-on-small-only"

        it "should render hide on medium" do
            (hide ~ on medium ~ on tablet) `shouldEqual` "hide-on-med-only"

        it "should render hide on large" do
            (hide ~ on large) `shouldEqual` "hide-on-large-only"

        it "should render hide on medium-small" do
            (hide ~ on small ~ on medium) `shouldEqual` "hide-on-med-and-down"

        it "should render hide on medium-large" do
            (hide ~ on medium ~ on large) `shouldEqual` "hide-on-med-and-up"

        it "should render hide on small and large" do
            (hide ~ on small ~ on large) `shouldEqual`
                "hide-on-small-only hide-on-large-only"

        it "should render hide on all" do
            (hide ~ on small ~ on medium ~ on large) `shouldEqual` "hide"

        it "should render a hide" do
            hide `shouldEqual` "hide"

        it "should render show on small" do
            (show ~ on small) `shouldEqual` "show-on-small"

        it "should render show on medium" do
            (show ~ on medium ~ on tablet) `shouldEqual` "show-on-medium"

        it "should render show on large" do
            (show ~ on large) `shouldEqual` "show-on-large"

        it "should render show on medium-small" do
            (show ~ on small ~ on medium) `shouldEqual` "show-on-medium-and-down"

        it "should render show on medium-large" do
            (show ~ on medium ~ on large) `shouldEqual` "show-on-medium-and-up"

        it "should render show on small and large" do
            (show ~ on small ~ on large) `shouldEqual`
                "show-on-small show-on-large"

        it "should render show on all" do
            (show ~ on small ~ on medium ~ on large) `shouldEqual` "show"

        it "should render a show" do
            show `shouldEqual` "show"

    describe "Shadow" do
        it "should render shadow with 0 z-depth" do
            shadow zDepth d0 `shouldEqual` "z-depth-0"

        it "should render shadow with 5 z-depth" do
            shadow zDepth d5 `shouldEqual` "z-depth-5"

    describe "Table" do
        it "should render a full-feature table" do
            (table striped ~ responsive ~ highlight ~ centered) `shouldEqual`
                "striped highlight centered responsive-table"

    describe "Badge" do
        it "should render a badge" do
            badge `shouldEqual` "badge"

        it "should render a new badge" do
            (badge ~ new) `shouldEqual` "new badge"

    describe "Transition" do
        it "should render scale-out in the initial state" do
            scale out false `shouldEqual` "scale-transition"

        it "should render scale-out in the final state" do
            scale out true `shouldEqual` "scale-transition scale-out"

        it "should render scale-in in the initial state" do
            scale in' false `shouldEqual` "scale-transition scale-out"

        it "should render scale-in in the final state" do
            scale in' true `shouldEqual` "scale-transition scale-out scale-in"

    describe "Text" do
        it "should render truncated, flowing text with color" do
            (text lightBlue ~ darken d4 ~ flow ~ truncate) `shouldEqual`
                "truncate flow-text light-blue-text text-darken-4"

        it "should render text with color" do
            text ((color lightBlue ~ darken d4) :: Color) `shouldEqual`
                "light-blue-text text-darken-4"

    describe "Alignment" do
        it "should render right alignment" do
            align right `shouldEqual` "right-align"

        it "should render left, vertically centered alignment" do
            (align left ~ verticalCenter) `shouldEqual`
                "left-align valign-wrapper"

        it "should render horizontally centered alignment" do
            (align right ~ horizontalCenter) `shouldEqual` "center-align"

        it "should render flow left" do
            float left `shouldEqual` "left"

        it "should render flow right" do
            (float left ~ right) `shouldEqual` "right"

    describe "Image" do
        it "should render responsive, circular, material-boxed image" do
            (image circular ~ responsive ~ materialBoxed) `shouldEqual`
                "responsive-img circle materialboxed"

    describe "Video" do
        it "should render responsive embed" do
            video responsive true `shouldEqual` "video-container"

        it "should render responsive video" do
            video responsive false `shouldEqual` "responsive-video"

    describe "Preloader" do
        it "should render a linear, indeterminate preloader" do
            S.render (preloader linear) `shouldEqual` S.render (div
                ! className "progress"
                $ div ! className "indeterminate" $ empty)

        it "should render a linear, determinate preloader with little progress" do
            S.render (preloader linear ~ -1.0) `shouldEqual` S.render (div
                ! className "progress"
                $ div ! className "determinate"! style "width: 0%"$ empty)

        it "should render a linear, determinate preloader with huge progress" do
            S.render (preloader linear ~ 10.0) `shouldEqual` S.render (div
                ! className "progress"
                $ div ! className "determinate" ! style "width: 100%" $ empty)

        it "should render a circular preloader" do
            S.render (preloader circular) `shouldEqual` S.render (div
                ! className "preloader-wrapper"
                $ div ! className "spinner-layer" $ do
                    div ! className "circle-clipper left"
                        $ div ! className "circle" $ empty
                    div ! className "gap-patch"
                        $ div ! className "circle" $ empty
                    div ! className "circle-clipper right"
                        $ div ! className "circle" $ empty)

        it "should render an active, large, circular, red preloader" do
            S.render (preloader circular ~ large ~ active ~ red) `shouldEqual`
                S.render (div
                    ! className "active big preloader-wrapper"
                    $ div ! className "spinner-layer spinner-red-only" $ do
                        div ! className "circle-clipper left"
                            $ div ! className "circle" $ empty
                        div ! className "gap-patch"
                            $ div ! className "circle" $ empty
                        div ! className "circle-clipper right"
                            $ div ! className "circle" $ empty)

        it "should render a small, circular, flashing preloader" do
            S.render (preloader circular ~ small ~ flashing) `shouldEqual`
                S.render (div ! className "small preloader-wrapper" $ do
                    div ! className "spinner-layer spinner-blue" $ do
                        div ! className "circle-clipper left"
                            $ div ! className "circle" $ empty
                        div ! className "gap-patch"
                            $ div ! className "circle" $ empty
                        div ! className "circle-clipper right"
                            $ div ! className "circle" $ empty
                    div ! className "spinner-layer spinner-red" $ do
                        div ! className "circle-clipper left"
                            $ div ! className "circle" $ empty
                        div ! className "gap-patch"
                            $ div ! className "circle" $ empty
                        div ! className "circle-clipper right"
                            $ div ! className "circle" $ empty
                    div ! className "spinner-layer spinner-yellow" $ do
                        div ! className "circle-clipper left"
                            $ div ! className "circle" $ empty
                        div ! className "gap-patch"
                            $ div ! className "circle" $ empty
                        div ! className "circle-clipper right"
                            $ div ! className "circle" $ empty
                    div ! className "spinner-layer spinner-green" $ do
                        div ! className "circle-clipper left"
                            $ div ! className "circle" $ empty
                        div ! className "gap-patch"
                            $ div ! className "circle" $ empty
                        div ! className "circle-clipper right"
                            $ div ! className "circle" $ empty)

    describe "Icon" do
        it """should render "3d_rotation" icon""" do
            S.render (icon threeDRotation) `shouldEqual`
                S.render (i ! className "material-icons" $ H.text "3d_rotation")

        it """should render tiny, prefixed "ac_unit" icon""" do
            S.render (icon acUnit ~ tiny ~ prefixedInInputField) `shouldEqual`
                S.render (i ! className "tiny material-icons prefix"
                    $ H.text "ac_unit")

    describe "Waves" do
        it "should render waves" do
            waves `shouldEqual` "waves-effect"

        it "should render circular, display-block, teal waves" do
            (waves ~ ((color teal ~ darken d1) :: Color) ~ circular ~ displayBlock)
                `shouldEqual`
                    "waves-effect waves-circle waves-block waves-teal waves-darken-1"

        it "should render light waves" do
            (waves ~ light) `shouldEqual` "waves-effect waves-light"

    describe "Tooltips" do
        it "should render data tooltip position" do
            S.render (div ! dataTooltipPosition top $ empty) `shouldEqual`
                S.render (div ! attribute "data-position" "top" $ empty)

    describe "Carousel" do
        it "should render a carousel" do
            carousel `shouldEqual` "carousel"

        it "should render a slider carousel" do
            (carousel ~ fullWidthSlider) `shouldEqual` "carousel carousel-slider"

        it "should render a carousel item" do
            carouselItem `shouldEqual` "carousel-item"

        it "should render a fixed carousel item" do
            (carouselItem ~ fixed) `shouldEqual` "carousel-fixed-item"

    describe "Slider" do
        it "should render a slider" do
            slider `shouldEqual` "slider"

        it "should render a fullscreen slider" do
            (slider ~ fullscreen) `shouldEqual` "fullscreen slider"

    describe "Sidenav" do
        it "should render a sidenav" do
            sidenav `shouldEqual` "sidenav"

        it "should render a fixed sidenav" do
            (sidenav ~ fixed) `shouldEqual` "sidenav-fixed sidenav"

    describe "TextInputs" do
        it "should render an input field" do
            inputField `shouldEqual` "input-field"

        it "should render a file input field" do
            (inputField ~ file) `shouldEqual` "file-field input-field"
