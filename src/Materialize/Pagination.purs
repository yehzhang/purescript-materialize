{-|
See <https://materializecss.com/pagination.html>.
-}
module Materialize.Pagination where

import Materialize.Markup
import Materialize.Types (Class)


pagination :: forall r. Variadic Class r => r
pagination = liftVariadic "pagination"
