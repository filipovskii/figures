module View.App where

import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)
import Model exposing (Model, Action(AddRect))
import Signal

app : Signal.Address Action -> Model -> Html

app address model =
  div []
    [ button [ onClick address AddRect ] [ text "+" ]
    , div [] [ text (toString model) ]
    ]
