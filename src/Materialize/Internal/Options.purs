module Materialize.Internal.Options where

import Prim.Row (class Union)
import Unsafe.Coerce (unsafeCoerce)


foreign import data Subrecord :: # Type -> Type

mkSubrecord :: forall r s. Subrow r s => Record r -> Subrecord s
mkSubrecord = unsafeCoerce

class Subrow (r :: # Type) (s :: # Type)

instance subsetUnionLeft :: Union r s t => Subrow r t
