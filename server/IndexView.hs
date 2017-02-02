{-# LANGUAGE OverloadedStrings #-}

module IndexView where

import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A

build :: Html
build = do
  docTypeHtml $ do
    H.head $ do
      H.title "Tree"
      meta ! httpEquiv "X-UA-Compatible" ! content "IE=edge"
      meta ! name "viewport" ! content "width=device-width, initial-scale=1.0, user-scalable=no;"

      link ! rel "icon" ! sizes "16x16 32x32" ! href "images/favicon.ico"
      meta ! name "msapplication-TileColor" ! content "#FFFFFF"
      meta ! name "msapplication-TileImage" ! content "images/mstile.png"
      
      script ! src "app.js" $ return ()

    body $ do
      H.div ! A.id "content" $ return ()
      script "Elm.App.embed(document.getElementById('content'));"
