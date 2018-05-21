module Schedule exposing (..)

import NFL exposing (..)
import Dict


nfl2018Schedule : Dict.Dict String Team
nfl2018Schedule =
    Dict.fromList <|
        List.map (\x -> ( abbrToStr x.abbr, x )) <|
            [ ari
            , atl
            ]


ari : Team
ari =
    { abbr = ARI
    , record = initRecord
    , division = West
    , conference = NFC
    , schedule =
        [ { location = Home, opponent = WAS, result = Tie }
        , { location = Away, opponent = LAR, result = Tie }
        , { location = Home, opponent = CHI, result = Tie }
        , { location = Home, opponent = SEA, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Away, opponent = MIN, result = Tie }
        , { location = Away, opponent = DEN, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = KC, result = Tie }
        , { location = Home, opponent = OAK, result = Tie }
        , { location = Away, opponent = LAC, result = Tie }
        , { location = Away, opponent = GB, result = Tie }
        , { location = Home, opponent = DET, result = Tie }
        , { location = Away, opponent = ATL, result = Tie }
        , { location = Home, opponent = LAR, result = Tie }
        , { location = Away, opponent = SEA, result = Tie }
        ]
    }


atl : Team
atl =
    { abbr = ATL
    , record = initRecord
    , division = South
    , conference = NFC
    , schedule =
        [ { location = Away, opponent = PHI, result = Tie }
        , { location = Home, opponent = CAR, result = Tie }
        , { location = Home, opponent = NO, result = Tie }
        , { location = Home, opponent = CIN, result = Tie }
        , { location = Away, opponent = PIT, result = Tie }
        , { location = Home, opponent = TB, result = Tie }
        , { location = Home, opponent = NYG, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = WAS, result = Tie }
        , { location = Away, opponent = CLE, result = Tie }
        , { location = Home, opponent = DAL, result = Tie }
        , { location = Away, opponent = NO, result = Tie }
        , { location = Home, opponent = BAL, result = Tie }
        , { location = Away, opponent = GB, result = Tie }
        , { location = Home, opponent = ARI, result = Tie }
        , { location = Away, opponent = CAR, result = Tie }
        , { location = Away, opponent = TB, result = Tie }
        ]
    }
