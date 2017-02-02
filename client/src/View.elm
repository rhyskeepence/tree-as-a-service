module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

import Types exposing (..)
--import SmallData.View
--import Tree.View

(=>) = (,)


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
        [ style [ "position" => "absolute", "top" => "0", "right" => "0", "left" => "0", "height" => "32px", "display" => "flex", "box-shadow" => "0 1px 3px 0 rgba(38,38,41,.4", "background" => "#262629", "color" => "#F5F6F7"] ]
        [
          div 
            [ style [ "display" => "inline-block", "margin" => "6px 8px 4px 0", "padding" => "0 5px 1px", "border" => "0 solid transparent", "font-weight" => "600", "white-space" => "nowrap", "overflow" => "hidden", "text-overflow" => "ellipsis", "height" => "27px", "vertical-align" => "bottom" ] ]
            [ text "Tree" ]
          ]
        
    leftnav =
      nav 
        [ style [ "min-width" => "160px"] ]
        [ div 
            [ style [ "position" => "absolute", "top" => "32px", "left" => "0", "bottom" => "0", "overflow" => "hidden", "width" => "160px", "z-index" => "3", "color" => "#262629", "background-color" => "#FFF", "box-shadow" => "0 0 4px 0 #9696A3" ] ]
            [ ul 
                [ style [ "list-style-type" => "none", "padding-left" => "0", "margin" => "28px 0 16px 10px" ] ]
                [
                  li [ style [ "text-transform" => "capitalize", "font-weight" => "600", "color" => "#262629", "padding" => "4px 0 3px", "margin" => "0", "font-size" => "13px", "line-height" => "20px", "white-space" => "nowrap", "overflow" => "hidden"] ] [ text "Tree" ],
                  li [ style [ "text-transform" => "capitalize", "font-weight" => "600", "color" => "#262629", "padding" => "4px 0 3px", "margin" => "0", "font-size" => "13px", "line-height" => "20px", "white-space" => "nowrap", "overflow" => "hidden"] ] [ text "Small Data" ]
                ]
              ]
          ]

    view = 
      section 
        [ style [ "position" => "absolute", "top" => "32px", "right" => "0", "bottom" => "0", "left" => "160px", "background" => "#F5F6F7", "z-index" => "-1", "overflow" => "hidden" ] ]
        [
          table 
            [ style [ "width" => "100%" ]]
            [
              tr [ style [ "line-height" => "23px", "padding" => "0"]] [
                th
                  [ style [ "font-weight" => "300", "color" => "#46474F", "font-size" => "11px", "padding" => "0 4px" ] ]
                  [ text "Code" ]
                ],
              tr [ style [ "line-height" => "23px", "padding" => "0", "border-bottom" => "1px solid #D8D8DC"]] [
                td
                  [ style [ "font-weight" => "600", "color" => "#262629", "font-size" => "13px", "padding" => "0 4px" ] ]
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
    div [
      style [ "font-family" => "Helvetica, Arial, sans-serif", "font-size" => "12px", "line-height" => "1.6" ]
    ] 
    body 

