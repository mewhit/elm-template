port module Main exposing (..)

import Html exposing (Html, div, text)
import Browser


type alias Model =
    {}


type Msg
    = None


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : () -> ( Model, Cmd Msg )
init _ =
  ( {}, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( {}, Cmd.none )


view : Model -> Browser.Document Msg
view model =
    { title = "Hello template", body = [ text "hello world" ]}
