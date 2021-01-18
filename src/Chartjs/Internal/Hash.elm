module Chartjs.Internal.Hash exposing (hash)

import Bitwise exposing (shiftLeftBy)
import Char exposing (toCode)
import String exposing (foldl)


hash : String -> Int
hash str =
    foldl updateHash 5381 str


updateHash : Char -> Int -> Int
updateHash c h =
    shiftLeftBy h 5 + h + toCode c
