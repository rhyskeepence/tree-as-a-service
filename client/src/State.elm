module State exposing (..)

import Types exposing (..)

initialState : ( Model, Cmd Action )
initialState = 
  ( Model Tree, Cmd.none )

update : Action -> Model -> ( Model, Cmd Action )
update action model = 
  case action of 
    ChangeRoute route ->
      ( { model | route = route }, Cmd.none )


subscriptions : Model -> Sub Action
subscriptions _ = Sub.none