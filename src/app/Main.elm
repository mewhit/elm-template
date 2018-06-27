port module Main exposing (..)

import Html exposing (Html, div, program, text)


type alias Model =
    {}


type Msg
    = None


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : ( Model, Cmd Msg )
init =
    {} ! [ Cmd.none ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    {} ! [ Cmd.none ]


view : Model -> Html Msg
view model =
    div [] [ text "hello world" ]
