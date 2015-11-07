import Model exposing (update, initialState)
import View.App exposing (app)
import StartApp.Simple as StartApp


{-| Read more about StartApp and how this works at:

    https://github.com/evancz/start-app

The rough idea is that we just specify a model, a way to view it,
and a way to update it. That's all there is to it!
-}
main =
  StartApp.start { model = initialState, view = app, update = update }





{-|
import Color exposing (..)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)


main : Element
main =
  flow down
    [ drawingBoard
    , show
    ]
  collage 200 420
    [ move (0,-55) blueSquare
    , move (0, 55) redSquare
    ]


blueSquare : Form
blueSquare =
  traced (dashed blue) square


redSquare : Form
redSquare =
  traced (solid red) square


square : Path
square =
  path [ (50,50), (50,-50), (-50,-50), (-50,50), (50,50) ]
-}
