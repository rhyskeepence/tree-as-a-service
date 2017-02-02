{-# LANGUAGE OverloadedStrings #-}

module Main where

import IndexView
import Web.Scotty
import Network.Wai.Middleware.Static
import Network.Wai.Middleware.RequestLogger
import Text.Blaze.Html.Renderer.Text

main :: IO ()
main = do
  scotty 7070 $ do
    middleware logStdoutDev
    middleware $ staticPolicy (noDots >-> addBase "client/dist")

    get "/" $ renderView IndexView.build


renderView = html . renderHtml
