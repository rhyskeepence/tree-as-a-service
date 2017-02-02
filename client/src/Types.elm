module Types exposing (..)

type Route = Tree | SmallData


type Action = 
  ChangeRoute Route


type alias Model = 
  { route: Route }
