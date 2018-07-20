-- | See <https://materializecss.com/collections.html>.
module Materialize.Collections where

import Data.Maybe (Maybe(..))
import Data.Typelevel.Undefined (undefined)
import Data.Newtype (class Newtype, wrap)
import Prelude

import Materialize.Markup (class Decorate, class Render, class Variadic, liftVariadic, render)
import Materialize.Types (Class)
import Materialize.Overriden (Active)


newtype Collection = Collection { header :: Maybe Header }

newtype CollectionItem = CollectionItem { active :: Maybe Active
                                        , avatar :: Maybe Avatar
                                        }

data Header

data Avatar

collection :: forall r. Variadic Collection r => r
collection = liftVariadic $ wrap { header: Nothing }

instance variadicReturnCollection :: Variadic Collection Collection where
    liftVariadic = identity

header :: Header
header = undefined

collectionItem :: forall r. Variadic CollectionItem r => r
collectionItem = liftVariadic $ wrap { active: Nothing
                                    , avatar: Nothing
                                    }

instance variadicReturnCollectionItem :: Variadic CollectionItem CollectionItem where
    liftVariadic = identity

collectionHeader :: forall r. Variadic Class r => r
collectionHeader = liftVariadic "collection-header"

secondaryContent :: forall r. Variadic Class r => r
secondaryContent = liftVariadic "secondary-content"

avatar :: Avatar
avatar = undefined

instance decorateCollectionHeader :: Decorate Collection Header where
    decorate (Collection c) h = wrap c { header = pure h }

instance decorateCollectionItemActive :: Decorate CollectionItem Active where
    decorate (CollectionItem c) a = wrap c { active = pure a }

instance decorateCollectionItemAvatar :: Decorate CollectionItem Avatar where
    decorate (CollectionItem c) a = wrap c { avatar = pure a }

instance renderCollection :: Render Collection where
    render (Collection { header: h }) = render "collection" <> render h

instance renderCollectionItem :: Render CollectionItem where
    render (CollectionItem { active: a, avatar: a' }) =
        render a <> render "collection-item" <> render a'

instance renderHeader :: Render Header where
    render _ = render "with-header"

instance renderAvatar :: Render Avatar where
    render _ = render "avatar"

derive instance newtypeCollection :: Newtype Collection _

derive instance newtypeCollectionItem :: Newtype CollectionItem _
