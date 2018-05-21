module Main exposing (main)

import Html exposing (..)
import Html.Events exposing (..)
import Types exposing (Msg(..), Model, initModel)
import Dict
import NFL exposing (..)
import Html.Attributes as Attrs


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : ( Model, Cmd Msg )
init =
    ( initModel, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        DoNothing ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ renderSchedule model.schedule
        ]


renderSchedule : Dict.Dict String Team -> Html msg
renderSchedule schedule_ =
    let
        lst =
            Dict.toList schedule_

        io opp =
            let
                txt =
                    case opp.location of
                        Home ->
                            abbrToStr opp.opponent

                        Away ->
                            "@" ++ abbrToStr opp.opponent

                byeClass =
                    if opp.opponent == BYE then
                        "bye"
                    else
                        ""
            in
                div
                    [ Attrs.class "abbr opp"
                    , Attrs.class byeClass
                    ]
                    [ text txt ]

        go : ( String, Team ) -> Html msg
        go ( str, team ) =
            div [ Attrs.class "schedule--row" ] <|
                [ div [ Attrs.class "abbr team" ] [ text <| abbrToStr team.abbr ] ]
                    ++ (List.map io team.schedule)

        rows =
            List.map go lst
    in
        div [ Attrs.class "schedule--wrapper" ] rows
