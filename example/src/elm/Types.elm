module Types exposing (..)

import Dict
import NFL exposing (Team)
import Schedule exposing (nfl2018Schedule)


type alias Model =
    { schedule : Dict.Dict String Team
    }


type Msg
    = DoNothing


initModel : Model
initModel =
    { schedule = nfl2018Schedule
    }
