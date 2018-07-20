-- | See <https://materializecss.com/text-inputs.html>.
module Materialize.Forms.TextInputs where

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype, wrap)
import Data.Typelevel.Undefined (undefined)
import Prelude
import Text.Smolder.Markup (Attribute, attribute)

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render)
import Materialize.Types (Class, Message)


newtype InputField = InputField (Maybe File)

data File

inputField :: forall r. Variadic InputField r => r
inputField = liftVariadic $ wrap Nothing

instance variadicReturnInputField :: Variadic InputField InputField where
    liftVariadic = identity

file :: File
file = undefined

validate :: forall r. Variadic Class r => r
validate = liftVariadic "validate"

textInputActive :: forall r. Variadic Class r => r
textInputActive = liftVariadic "active"

dataValidationError :: Message -> Attribute
dataValidationError = attribute "data-error"

dataValidationSuccess :: Message -> Attribute
dataValidationSuccess = attribute "data-success"

helperText :: forall r. Variadic Class r => r
helperText = liftVariadic "helper-text"

materializeTextarea :: forall r. Variadic Class r => r
materializeTextarea = liftVariadic "materialize-textarea"

filePathWrapper :: forall r. Variadic Class r => r
filePathWrapper = liftVariadic "file-path-wrapper"

filePath :: forall r. Variadic Class r => r
filePath = liftVariadic "file-path"

dataLength :: Int -> Attribute
dataLength = attribute "data-length" <<< show

instance decorateInputFieldFile :: Decorate InputField File where
    decorate _ = wrap <<< pure

instance renderInputField :: Render InputField where
    render (InputField f) = render f <> render "input-field"

instance renderFile :: Render File where
    render _ = render "file-field"

derive instance newtypeInputField :: Newtype InputField _
