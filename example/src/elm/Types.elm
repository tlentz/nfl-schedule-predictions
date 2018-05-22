module Types exposing (..)

import Dict
import NFL exposing (Team, Abbr, Game)
import Schedule exposing (nfl2018Schedule)


type alias Model =
    { schedule : Dict.Dict String Team
    }


type Msg
    = ToggleResult ( Abbr, Game )
    | ResetSchedule
    | DoNothing


initModel : Model
initModel =
    { schedule = nfl2018Schedule
    }
