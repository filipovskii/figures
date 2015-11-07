module Model where

import Dict
import Random

type Action = AddRect | AddCircle
type alias Model =
  {
    figures: Dict.Dict Id Figure
  , positions: Dict.Dict Id Point
  , lastId: Int
  }
type Figure = Rect Int Int | Circle Int
type alias Id = Int
type alias Point = { x : Int, y : Int }

newPoint x y = { x = x, y = y }

newRect w h = Rect w h


update action model =
  case action of
    AddRect ->
      let newId = model.lastId + 1 in
        { model
        | figures <- Dict.insert newId (newRect 10 20) model.figures
        , positions <- Dict.insert newId (newPoint 0 0) model.positions
        , lastId <- newId
        }


initialState: Model
initialState =
  {
    figures = Dict.empty
  , positions = Dict.empty
  , lastId = 0
  }

