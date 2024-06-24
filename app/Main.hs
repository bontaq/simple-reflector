{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty
import Text.Pretty.Simple

main :: IO ()
main = scotty 3000 $
  put "/" $ do
    h <- headers

    liftIO $ print @String "headers:"
    liftIO $ pPrint h

    b <- body

    liftIO $ print @String "body:"
    liftIO $ pPrint b

    html ""
