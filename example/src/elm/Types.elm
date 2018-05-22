module Types exposing (..)

import Dict
import NFL exposing (Team, Abbr)
import Schedule exposing (nfl2018Schedule)


type alias Model =
    { schedule : Dict.Dict String Team
    }


type Msg
    = ToggleResult ( Abbr, Abbr )
    | ResetSchedule
    | DoNothing


initModel : Model
initModel =
    { schedule = nfl2018Schedule
    }
