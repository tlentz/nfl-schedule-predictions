module Main exposing (main)

import Html exposing (..)
import Html.Events exposing (..)
import Types exposing (Msg(..), Model, initModel)
import Dict
import NFL exposing (..)
import Html.Attributes as Attrs
import List.Extra as LE
import Schedule


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

        ResetSchedule ->
            init

        ToggleResult ( abbr, game ) ->
            let
                team =
                    Dict.get (abbrToStr abbr) model.schedule
            in
                updateSchedule model team game


updateSchedule : Model -> Maybe Team -> Game -> ( Model, Cmd Msg )
updateSchedule model teamA_ game =
    let
        teamB_ =
            Dict.get (abbrToStr game.opponent) model.schedule
    in
        case ( teamA_, teamB_ ) of
            ( Just teamA, Just teamB ) ->
                let
                    teamAvsTeamB_ =
                        List.head <|
                            List.filter (\x -> x.opponent == teamB.abbr && x.location == game.location) teamA.schedule

                    teamBvsTeamA_ =
                        List.head <|
                            List.filter (\x -> x.opponent == teamA.abbr && x.location /= game.location) teamB.schedule
                in
                    case ( teamAvsTeamB_, teamBvsTeamA_ ) of
                        ( Just teamAvsTeamB, Just teamBvsTeamA ) ->
                            let
                                teamAResult =
                                    getNextResult teamAvsTeamB.result

                                teamBResult =
                                    toggleResult teamAResult

                                newTeamAvsTeamB =
                                    { teamAvsTeamB | result = teamAResult }

                                newTeamBvsTeamA =
                                    { teamBvsTeamA | result = teamBResult }

                                newTeamASchedule =
                                    LE.replaceIf (\x -> x.opponent == newTeamAvsTeamB.opponent && x.location == game.location) newTeamAvsTeamB teamA.schedule

                                newTeamBSchedule =
                                    LE.replaceIf (\x -> x.opponent == newTeamBvsTeamA.opponent && x.location /= game.location) newTeamBvsTeamA teamB.schedule

                                newTeamA =
                                    { teamA | schedule = newTeamASchedule }

                                newTeamB =
                                    { teamB | schedule = newTeamBSchedule }

                                newSchedule =
                                    Schedule.updateWins <|
                                        Dict.insert (abbrToStr newTeamB.abbr) newTeamB <|
                                            Dict.insert (abbrToStr newTeamA.abbr) newTeamA model.schedule
                            in
                                ( { model | schedule = newSchedule }, Cmd.none )

                        ( _, _ ) ->
                            ( model, Cmd.none )

            ( _, _ ) ->
                ( model, Cmd.none )


getNextResult : NFL.Result -> NFL.Result
getNextResult result =
    case result of
        Tie ->
            Win

        Win ->
            Loss

        Loss ->
            Tie


noDuplicatesSchedule : List Game -> List Game
noDuplicatesSchedule schedule =
    LE.uniqueBy (\x -> NFL.abbrToStr x.opponent) schedule


toggleResult : NFL.Result -> NFL.Result
toggleResult result =
    case result of
        Win ->
            Loss

        Loss ->
            Win

        Tie ->
            Tie



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div [ Attrs.class "main--container" ]
        [ renderSchedule model.schedule
        , div [ Attrs.class "reset-schedule-btn--wrapper" ]
            [ div
                [ Attrs.class "reset-schedule-btn"
                , Html.Events.onClick ResetSchedule
                ]
                [ text "Reset" ]
            ]
        ]


renderSchedule : Dict.Dict String Team -> Html Msg
renderSchedule schedule_ =
    let
        lst =
            Dict.toList schedule_

        io team game =
            let
                txt =
                    case game.location of
                        Home ->
                            abbrToStr game.opponent

                        Away ->
                            "@" ++ abbrToStr game.opponent

                byeClass =
                    if game.opponent == BYE then
                        "bye"
                    else
                        ""

                resultClass =
                    case game.result of
                        Win ->
                            "win"

                        Loss ->
                            "loss"

                        Tie ->
                            "tie"
            in
                div
                    [ Attrs.class "abbr opp"
                    , Attrs.class byeClass
                    , Attrs.class resultClass
                    , Html.Events.onClick <| ToggleResult ( team, game )
                    ]
                    [ text txt ]

        go : ( String, Team ) -> Html Msg
        go ( str, team ) =
            div [ Attrs.class "schedule--row" ] <|
                [ div [ Attrs.class "abbr team" ]
                    [ text <|
                        String.concat <|
                            [ abbrToStr team.abbr
                            , " ("
                            , recordToString team.record
                            , ")"
                            ]
                    ]
                ]
                    ++ (List.map (io team.abbr) team.schedule)

        rows =
            List.map go lst
    in
        div [ Attrs.class "schedule--wrapper" ] rows
