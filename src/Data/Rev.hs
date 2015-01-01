module Data.Rev where

import qualified Data.List as L
import qualified Data.Vector as V
import qualified Data.Sequence as Seq
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import Data.Rev.Class (Rev(..))
import Data.Rev.Tuple

instance Rev ([] a) where
    rev = L.reverse 

instance Rev (V.Vector a) where
    rev = V.reverse

instance Rev (Seq.Seq a) where
    rev = Seq.reverse

instance Rev B.ByteString where
    rev = B.reverse

instance Rev BL.ByteString where
    rev = BL.reverse

instance Rev T.Text where
    rev = T.reverse

instance Rev TL.Text where
    rev = TL.reverse

