module NFL exposing (..)


type Conference
    = AFC
    | NFC


conferenceToStr : Conference -> String
conferenceToStr conference =
    case conference of
        AFC ->
            "AFC"

        NFC ->
            "NFC"


type Division
    = North
    | East
    | South
    | West


divisionToStr : Division -> String
divisionToStr division =
    case division of
        North ->
            "North"

        East ->
            "East"

        South ->
            "South"

        West ->
            "West"


type Abbr
    = ARI
    | ATL
    | BAL
    | BUF
    | CAR
    | CHI
    | CIN
    | CLE
    | DAL
    | DEN
    | DET
    | GB
    | HOU
    | IND
    | JAC
    | KC
    | LAC
    | LAR
    | MIA
    | MIN
    | NE
    | NO
    | NYG
    | NYJ
    | OAK
    | PHI
    | PIT
    | SEA
    | SF
    | TB
    | TEN
    | WAS
    | BYE


abbrToStr : Abbr -> String
abbrToStr abbr =
    case abbr of
        ARI ->
            "ARI"

        ATL ->
            "ATL"

        BAL ->
            "BAL"

        BUF ->
            "BUF"

        CAR ->
            "CAR"

        CHI ->
            "CHI"

        CIN ->
            "CIN"

        CLE ->
            "CLE"

        DAL ->
            "DAL"

        DEN ->
            "DEN"

        DET ->
            "DET"

        GB ->
            "GB"

        HOU ->
            "HOU"

        IND ->
            "IND"

        JAC ->
            "JAC"

        KC ->
            "KC"

        LAC ->
            "LAC"

        LAR ->
            "LAR"

        MIA ->
            "MIA"

        MIN ->
            "MIN"

        NE ->
            "NE"

        NO ->
            "NO"

        NYG ->
            "NYG"

        NYJ ->
            "NYJ"

        OAK ->
            "OAK"

        PHI ->
            "PHI"

        PIT ->
            "PIT"

        SEA ->
            "SEA"

        SF ->
            "SF"

        TB ->
            "TB"

        TEN ->
            "TEN"

        WAS ->
            "WAS"

        BYE ->
            "BYE"


type alias Team =
    { abbr : Abbr
    , record : Record
    , division : Division
    , conference : Conference
    , schedule : List Game
    }


type alias Record =
    { win : Int
    , loss : Int
    , tie : Int
    }


recordToString : Record -> String
recordToString record =
    String.join "-" <|
        [ toString record.win
        , toString record.loss
        , toString record.tie
        ]


initRecord : Record
initRecord =
    { win = 0
    , loss = 0
    , tie = 0
    }


type Location
    = Home
    | Away


locationToStr : Location -> String
locationToStr location =
    case location of
        Home ->
            "Home"

        Away ->
            "Away"


type alias Game =
    { location : Location
    , opponent : Abbr
    , result : Result
    }


type Result
    = Win
    | Loss
    | Tie


afcNorth : List Abbr
afcNorth =
    [ BAL
    , PIT
    , CLE
    , CIN
    ]


afcEast : List Abbr
afcEast =
    [ BUF
    , MIA
    , NE
    , NYJ
    ]


afcSouth : List Abbr
afcSouth =
    [ JAC
    , TEN
    , HOU
    , IND
    ]


afcWest : List Abbr
afcWest =
    [ DEN
    , OAK
    , KC
    , LAC
    ]


nfcNorth : List Abbr
nfcNorth =
    [ MIN
    , DET
    , GB
    , CHI
    ]


nfcEast : List Abbr
nfcEast =
    [ PHI
    , DAL
    , NYG
    , WAS
    ]


nfcSouth : List Abbr
nfcSouth =
    [ CAR
    , ATL
    , TB
    , NO
    ]


nfcWest : List Abbr
nfcWest =
    [ LAR
    , SEA
    , ARI
    , SF
    ]
