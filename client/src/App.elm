module App exposing (main)

import Html

import State
import View
import Types  

main : Program Never Types.Model Types.Action
main =
    Html.program
        { init = State.initialState
        , update = State.update
        , subscriptions = State.subscriptions
        , view = View.rootView
        }