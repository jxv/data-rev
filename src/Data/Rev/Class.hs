module Data.Rev.Class where

class Rev r where
    rev :: r -> r
