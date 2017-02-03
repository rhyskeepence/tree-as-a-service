module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

import Types exposing (..)
--import SmallData.View
--import Tree.View

rootView : Model -> Html Action
rootView model =
  let
    --view =
    --  case model.route of
    --    Tree ->
    --      Tree.View.view model.tree

    --    SmallData ->
    --      SmallData.View.view model.smallData

    top = 
      header 
        [ style [ ( "position", "absolute" ), ( "top", "0" ), ( "right", "0" ), ( "left", "0" ), ( "height", "2rem" ), ( "display", "flex" ), ("box-shadow", "0 1px 3px 0 rgba(38,38,41,.4)"), ( "background", "#262629" ), ( "color", "#F5F6F7" )] ]
        [
          div 
            [ style [ ( "display", "inline-block" ), ( "margin", "0.5rem 1rem" ), ( "border", "0 solid transparent" ), ( "font-weight", "600" ) ] ]
            [ text "Tree" ]
          ]
        
    leftnav =
      nav 
        [ style [ ( "min-width", "10rem" )] ]
        [ div 
            [ style [ ( "position", "absolute" ), ( "top", "2rem" ), ( "left", "0" ), ( "bottom", "0" ), ( "overflow", "hidden" ), ( "width", "10rem" ), ( "z-index", "3" ), ( "color", "#262629" ), ( "background-color", "#FFF" ), ( "box-shadow", "0 0 4px 0 #9696A3" ) ] ]
            [ ul 
                [ style [ ( "list-style-type", "none" ), ( "padding-left", "0" ), ( "margin", "2rem 1rem" ) ] ]
                [
                  li [ style [ ( "font-weight", "600" ), ( "color", "#262629" ), ( "line-height", "2rem" ) ] ] [ text "Tree" ],
                  li [ style [ ( "font-weight", "600" ), ( "color", "#262629" ), ( "line-height", "2rem" ) ] ] [ text "Small Data" ]
                ]
              ]
          ]

    view = 
      section 
        [ style [ ( "position", "absolute" ), ( "top", "2rem" ), ( "right", "0" ), ( "bottom", "0" ), ( "left", "10rem" ), ( "background", "#F5F6F7" ), ( "z-index", "-1" ), ( "overflow", "hidden" ) ] ]
        [
          table 
            [ style [ ( "width", "100%" ), ( "margin", "2rem 1rem" ) ]]
            [
              tr [ style [ ( "line-height", "2rem" ) ]] [
                th
                  [ style [ ( "font-weight", "300" ), ( "font-size", "0.75rem" ), ( "color", "#46474F" ) ] ]
                  [ text "Code" ]
                ],
              tr [ style [  ( "border-bottom", "1px solid #D8D8DC" ), ( "line-height", "2rem" ) ]] [
                td
                  [ style [ ( "font-weight", "600" ), ( "color", "#262629" ) ] ]
                  [ text "1234" ]
                ],
              tr [ style [  ( "border-bottom", "1px solid #D8D8DC" ), ( "line-height", "2rem" ) ]] [
                td
                  [ style [ ( "font-weight", "600" ), ( "color", "#262629" ) ] ]
                  [ text "456" ]
                ],
              tr [ style [  ( "border-bottom", "1px solid #D8D8DC" ), ( "line-height", "2rem" ) ]] [
                td
                  [ style [ ( "font-weight", "600" ), ( "color", "#262629" ) ] ]
                  [ text "789" ]
                ],
              tr [ style [  ( "border-bottom", "1px solid #D8D8DC" ), ( "line-height", "2rem" ) ]] [
                td
                  [ style [ ( "font-weight", "600" ), ( "color", "#262629" ) ] ]
                  [ text "1234" ]
                ]
            ]
          ]

    body =
      [ 
        top,
        leftnav,
        view
      ]

  in
    div [] body

