module Schedule exposing (..)

import Dict
import NFL exposing (..)


nfl2018Schedule : Dict.Dict String Team
nfl2018Schedule =
    Dict.fromList <|
        List.map (\x -> ( abbrToStr x.abbr, x )) <|
            [ ari
            , atl
            , bal
            , buf
            , car
            , chi
            , cin
            , cle
            , dal
            , den
            , det
            , gb
            , hou
            , ind
            , jac
            , kc
            , lac
            , lar
            , mia
            , min
            , ne
            , no
            , nyg
            , nyj
            , oak
            , phi
            , pit
            , sea
            , sf
            , tb
            , ten
            , was
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
        , { location = Home, opponent = DEN, result = Tie }
        , { location = Home, opponent = SF, result = Tie }
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


bal : Team
bal =
    { abbr = BAL
    , record = initRecord
    , division = North
    , conference = AFC
    , schedule =
        [ { location = Home, opponent = BUF, result = Tie }
        , { location = Away, opponent = CIN, result = Tie }
        , { location = Home, opponent = DEN, result = Tie }
        , { location = Away, opponent = PIT, result = Tie }
        , { location = Away, opponent = CLE, result = Tie }
        , { location = Away, opponent = TEN, result = Tie }
        , { location = Home, opponent = NO, result = Tie }
        , { location = Away, opponent = CAR, result = Tie }
        , { location = Home, opponent = PIT, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = CIN, result = Tie }
        , { location = Home, opponent = OAK, result = Tie }
        , { location = Away, opponent = ATL, result = Tie }
        , { location = Away, opponent = KC, result = Tie }
        , { location = Home, opponent = TB, result = Tie }
        , { location = Away, opponent = LAC, result = Tie }
        , { location = Home, opponent = CLE, result = Tie }
        ]
    }


buf : Team
buf =
    { abbr = BUF
    , record = initRecord
    , division = East
    , conference = AFC
    , schedule =
        [ { location = Away, opponent = BAL, result = Tie }
        , { location = Home, opponent = LAC, result = Tie }
        , { location = Away, opponent = MIN, result = Tie }
        , { location = Away, opponent = GB, result = Tie }
        , { location = Home, opponent = TEN, result = Tie }
        , { location = Away, opponent = HOU, result = Tie }
        , { location = Away, opponent = IND, result = Tie }
        , { location = Home, opponent = NE, result = Tie }
        , { location = Home, opponent = CHI, result = Tie }
        , { location = Away, opponent = NYJ, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = JAC, result = Tie }
        , { location = Away, opponent = MIA, result = Tie }
        , { location = Home, opponent = NYJ, result = Tie }
        , { location = Home, opponent = DET, result = Tie }
        , { location = Away, opponent = NE, result = Tie }
        , { location = Home, opponent = MIA, result = Tie }
        ]
    }


car : Team
car =
    { abbr = CAR
    , record = initRecord
    , division = South
    , conference = NFC
    , schedule =
        [ { location = Home, opponent = DAL, result = Tie }
        , { location = Away, opponent = ATL, result = Tie }
        , { location = Home, opponent = CIN, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = NYG, result = Tie }
        , { location = Away, opponent = WAS, result = Tie }
        , { location = Away, opponent = PHI, result = Tie }
        , { location = Home, opponent = BAL, result = Tie }
        , { location = Home, opponent = TB, result = Tie }
        , { location = Away, opponent = PIT, result = Tie }
        , { location = Away, opponent = DET, result = Tie }
        , { location = Home, opponent = SEA, result = Tie }
        , { location = Away, opponent = TB, result = Tie }
        , { location = Away, opponent = CLE, result = Tie }
        , { location = Home, opponent = NO, result = Tie }
        , { location = Home, opponent = ATL, result = Tie }
        , { location = Away, opponent = NO, result = Tie }
        ]
    }


chi : Team
chi =
    { abbr = CHI
    , record = initRecord
    , division = North
    , conference = NFC
    , schedule =
        [ { location = Away, opponent = GB, result = Tie }
        , { location = Home, opponent = SEA, result = Tie }
        , { location = Away, opponent = ARI, result = Tie }
        , { location = Home, opponent = TB, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = MIA, result = Tie }
        , { location = Home, opponent = NE, result = Tie }
        , { location = Home, opponent = NYJ, result = Tie }
        , { location = Away, opponent = BUF, result = Tie }
        , { location = Home, opponent = DET, result = Tie }
        , { location = Home, opponent = MIN, result = Tie }
        , { location = Away, opponent = DET, result = Tie }
        , { location = Away, opponent = NYG, result = Tie }
        , { location = Home, opponent = LAR, result = Tie }
        , { location = Home, opponent = GB, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Away, opponent = MIN, result = Tie }
        ]
    }


cin : Team
cin =
    { abbr = CIN
    , record = initRecord
    , division = North
    , conference = AFC
    , schedule =
        [ { location = Away, opponent = IND, result = Tie }
        , { location = Home, opponent = BAL, result = Tie }
        , { location = Away, opponent = CAR, result = Tie }
        , { location = Away, opponent = ATL, result = Tie }
        , { location = Home, opponent = MIA, result = Tie }
        , { location = Home, opponent = PIT, result = Tie }
        , { location = Away, opponent = KC, result = Tie }
        , { location = Home, opponent = TB, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = NO, result = Tie }
        , { location = Away, opponent = BAL, result = Tie }
        , { location = Home, opponent = CLE, result = Tie }
        , { location = Home, opponent = DEN, result = Tie }
        , { location = Away, opponent = LAC, result = Tie }
        , { location = Home, opponent = OAK, result = Tie }
        , { location = Away, opponent = CLE, result = Tie }
        , { location = Away, opponent = PIT, result = Tie }
        ]
    }


cle : Team
cle =
    { abbr = CLE
    , record = initRecord
    , division = North
    , conference = AFC
    , schedule =
        [ { location = Home, opponent = PIT, result = Tie }
        , { location = Away, opponent = NO, result = Tie }
        , { location = Home, opponent = NYJ, result = Tie }
        , { location = Away, opponent = OAK, result = Tie }
        , { location = Home, opponent = BAL, result = Tie }
        , { location = Home, opponent = LAC, result = Tie }
        , { location = Away, opponent = TB, result = Tie }
        , { location = Away, opponent = PIT, result = Tie }
        , { location = Home, opponent = KC, result = Tie }
        , { location = Home, opponent = ATL, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = CIN, result = Tie }
        , { location = Away, opponent = HOU, result = Tie }
        , { location = Home, opponent = CAR, result = Tie }
        , { location = Away, opponent = DEN, result = Tie }
        , { location = Home, opponent = CIN, result = Tie }
        , { location = Away, opponent = BAL, result = Tie }
        ]
    }


dal : Team
dal =
    { abbr = DAL
    , record = initRecord
    , division = East
    , conference = NFC
    , schedule =
        [ { location = Away, opponent = CAR, result = Tie }
        , { location = Home, opponent = NYG, result = Tie }
        , { location = Away, opponent = SEA, result = Tie }
        , { location = Home, opponent = DET, result = Tie }
        , { location = Away, opponent = HOU, result = Tie }
        , { location = Home, opponent = JAC, result = Tie }
        , { location = Away, opponent = WAS, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = TEN, result = Tie }
        , { location = Away, opponent = PHI, result = Tie }
        , { location = Away, opponent = ATL, result = Tie }
        , { location = Home, opponent = WAS, result = Tie }
        , { location = Home, opponent = NO, result = Tie }
        , { location = Home, opponent = PHI, result = Tie }
        , { location = Away, opponent = IND, result = Tie }
        , { location = Home, opponent = TB, result = Tie }
        , { location = Away, opponent = NYG, result = Tie }
        ]
    }


den : Team
den =
    { abbr = DEN
    , record = initRecord
    , division = West
    , conference = AFC
    , schedule =
        [ { location = Home, opponent = SEA, result = Tie }
        , { location = Home, opponent = OAK, result = Tie }
        , { location = Away, opponent = BAL, result = Tie }
        , { location = Home, opponent = KC, result = Tie }
        , { location = Away, opponent = NYJ, result = Tie }
        , { location = Home, opponent = LAR, result = Tie }
        , { location = Away, opponent = ARI, result = Tie }
        , { location = Away, opponent = KC, result = Tie }
        , { location = Home, opponent = HOU, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = LAC, result = Tie }
        , { location = Home, opponent = PIT, result = Tie }
        , { location = Away, opponent = CIN, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Home, opponent = CLE, result = Tie }
        , { location = Away, opponent = OAK, result = Tie }
        , { location = Home, opponent = LAC, result = Tie }
        ]
    }


det : Team
det =
    { abbr = DET
    , record = initRecord
    , division = North
    , conference = NFC
    , schedule =
        [ { location = Home, opponent = NYJ, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Home, opponent = NE, result = Tie }
        , { location = Away, opponent = DAL, result = Tie }
        , { location = Home, opponent = GB, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = MIA, result = Tie }
        , { location = Home, opponent = SEA, result = Tie }
        , { location = Away, opponent = MIN, result = Tie }
        , { location = Away, opponent = CHI, result = Tie }
        , { location = Home, opponent = CAR, result = Tie }
        , { location = Home, opponent = CHI, result = Tie }
        , { location = Home, opponent = LAR, result = Tie }
        , { location = Away, opponent = ARI, result = Tie }
        , { location = Away, opponent = BUF, result = Tie }
        , { location = Home, opponent = MIN, result = Tie }
        , { location = Away, opponent = GB, result = Tie }
        ]
    }


gb : Team
gb =
    { abbr = GB
    , record = initRecord
    , division = North
    , conference = NFC
    , schedule =
        [ { location = Home, opponent = CHI, result = Tie }
        , { location = Home, opponent = MIN, result = Tie }
        , { location = Away, opponent = WAS, result = Tie }
        , { location = Home, opponent = BUF, result = Tie }
        , { location = Away, opponent = DET, result = Tie }
        , { location = Home, opponent = SF, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = LAR, result = Tie }
        , { location = Away, opponent = NE, result = Tie }
        , { location = Home, opponent = MIA, result = Tie }
        , { location = Away, opponent = SEA, result = Tie }
        , { location = Away, opponent = MIN, result = Tie }
        , { location = Home, opponent = ARI, result = Tie }
        , { location = Home, opponent = ATL, result = Tie }
        , { location = Away, opponent = CHI, result = Tie }
        , { location = Away, opponent = NYJ, result = Tie }
        , { location = Home, opponent = DET, result = Tie }
        ]
    }


hou : Team
hou =
    { abbr = HOU
    , record = initRecord
    , division = South
    , conference = AFC
    , schedule =
        [ { location = Away, opponent = NE, result = Tie }
        , { location = Away, opponent = TEN, result = Tie }
        , { location = Home, opponent = NYG, result = Tie }
        , { location = Away, opponent = IND, result = Tie }
        , { location = Home, opponent = DAL, result = Tie }
        , { location = Home, opponent = BUF, result = Tie }
        , { location = Away, opponent = JAC, result = Tie }
        , { location = Home, opponent = MIA, result = Tie }
        , { location = Away, opponent = DEN, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = WAS, result = Tie }
        , { location = Home, opponent = TEN, result = Tie }
        , { location = Home, opponent = CLE, result = Tie }
        , { location = Home, opponent = IND, result = Tie }
        , { location = Away, opponent = NYJ, result = Tie }
        , { location = Away, opponent = PHI, result = Tie }
        , { location = Home, opponent = JAC, result = Tie }
        ]
    }


ind : Team
ind =
    { abbr = IND
    , record = initRecord
    , division = South
    , conference = AFC
    , schedule =
        [ { location = Home, opponent = CIN, result = Tie }
        , { location = Away, opponent = WAS, result = Tie }
        , { location = Away, opponent = PHI, result = Tie }
        , { location = Home, opponent = HOU, result = Tie }
        , { location = Away, opponent = NE, result = Tie }
        , { location = Away, opponent = NYJ, result = Tie }
        , { location = Home, opponent = BUF, result = Tie }
        , { location = Away, opponent = OAK, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = JAC, result = Tie }
        , { location = Home, opponent = TEN, result = Tie }
        , { location = Home, opponent = MIA, result = Tie }
        , { location = Away, opponent = JAC, result = Tie }
        , { location = Away, opponent = HOU, result = Tie }
        , { location = Home, opponent = DAL, result = Tie }
        , { location = Home, opponent = NYG, result = Tie }
        , { location = Away, opponent = TEN, result = Tie }
        ]
    }


jac : Team
jac =
    { abbr = JAC
    , record = initRecord
    , division = South
    , conference = AFC
    , schedule =
        [ { location = Away, opponent = NYG, result = Tie }
        , { location = Home, opponent = NE, result = Tie }
        , { location = Home, opponent = TEN, result = Tie }
        , { location = Home, opponent = NYJ, result = Tie }
        , { location = Away, opponent = KC, result = Tie }
        , { location = Away, opponent = DAL, result = Tie }
        , { location = Home, opponent = HOU, result = Tie }
        , { location = Home, opponent = PHI, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = IND, result = Tie }
        , { location = Home, opponent = PIT, result = Tie }
        , { location = Away, opponent = BUF, result = Tie }
        , { location = Home, opponent = IND, result = Tie }
        , { location = Away, opponent = TEN, result = Tie }
        , { location = Home, opponent = WAS, result = Tie }
        , { location = Away, opponent = MIA, result = Tie }
        , { location = Away, opponent = HOU, result = Tie }
        ]
    }


kc : Team
kc =
    { abbr = KC
    , record = initRecord
    , division = West
    , conference = AFC
    , schedule =
        [ { location = Away, opponent = LAC, result = Tie }
        , { location = Away, opponent = PIT, result = Tie }
        , { location = Home, opponent = SF, result = Tie }
        , { location = Away, opponent = DEN, result = Tie }
        , { location = Home, opponent = JAC, result = Tie }
        , { location = Away, opponent = NE, result = Tie }
        , { location = Home, opponent = CIN, result = Tie }
        , { location = Home, opponent = DEN, result = Tie }
        , { location = Away, opponent = CLE, result = Tie }
        , { location = Home, opponent = ARI, result = Tie }
        , { location = Away, opponent = LAR, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = OAK, result = Tie }
        , { location = Home, opponent = BAL, result = Tie }
        , { location = Home, opponent = LAC, result = Tie }
        , { location = Away, opponent = SEA, result = Tie }
        , { location = Home, opponent = OAK, result = Tie }
        ]
    }


lac : Team
lac =
    { abbr = LAC
    , record = initRecord
    , division = West
    , conference = AFC
    , schedule =
        [ { location = Home, opponent = KC, result = Tie }
        , { location = Away, opponent = BUF, result = Tie }
        , { location = Away, opponent = LAR, result = Tie }
        , { location = Home, opponent = SF, result = Tie }
        , { location = Home, opponent = OAK, result = Tie }
        , { location = Away, opponent = CLE, result = Tie }
        , { location = Home, opponent = TEN, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = SEA, result = Tie }
        , { location = Away, opponent = OAK, result = Tie }
        , { location = Home, opponent = DEN, result = Tie }
        , { location = Home, opponent = ARI, result = Tie }
        , { location = Away, opponent = PIT, result = Tie }
        , { location = Home, opponent = CIN, result = Tie }
        , { location = Away, opponent = KC, result = Tie }
        , { location = Home, opponent = BAL, result = Tie }
        , { location = Away, opponent = DEN, result = Tie }
        ]
    }


lar : Team
lar =
    { abbr = LAR
    , record = initRecord
    , division = West
    , conference = NFC
    , schedule =
        [ { location = Away, opponent = OAK, result = Tie }
        , { location = Home, opponent = ARI, result = Tie }
        , { location = Home, opponent = LAC, result = Tie }
        , { location = Home, opponent = MIN, result = Tie }
        , { location = Away, opponent = SEA, result = Tie }
        , { location = Away, opponent = DEN, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Home, opponent = GB, result = Tie }
        , { location = Away, opponent = NO, result = Tie }
        , { location = Home, opponent = SEA, result = Tie }
        , { location = Home, opponent = KC, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = DET, result = Tie }
        , { location = Away, opponent = CHI, result = Tie }
        , { location = Home, opponent = PHI, result = Tie }
        , { location = Away, opponent = ARI, result = Tie }
        , { location = Home, opponent = SF, result = Tie }
        ]
    }


mia : Team
mia =
    { abbr = MIA
    , record = initRecord
    , division = East
    , conference = AFC
    , schedule =
        [ { location = Home, opponent = TEN, result = Tie }
        , { location = Away, opponent = NYJ, result = Tie }
        , { location = Home, opponent = OAK, result = Tie }
        , { location = Away, opponent = NE, result = Tie }
        , { location = Away, opponent = CIN, result = Tie }
        , { location = Home, opponent = CHI, result = Tie }
        , { location = Home, opponent = DET, result = Tie }
        , { location = Away, opponent = HOU, result = Tie }
        , { location = Home, opponent = NYJ, result = Tie }
        , { location = Away, opponent = GB, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = IND, result = Tie }
        , { location = Home, opponent = BUF, result = Tie }
        , { location = Home, opponent = NE, result = Tie }
        , { location = Away, opponent = MIN, result = Tie }
        , { location = Home, opponent = JAC, result = Tie }
        , { location = Away, opponent = BUF, result = Tie }
        ]
    }


min : Team
min =
    { abbr = MIN
    , record = initRecord
    , division = North
    , conference = NFC
    , schedule =
        [ { location = Home, opponent = SF, result = Tie }
        , { location = Away, opponent = GB, result = Tie }
        , { location = Home, opponent = BUF, result = Tie }
        , { location = Away, opponent = LAR, result = Tie }
        , { location = Away, opponent = PHI, result = Tie }
        , { location = Home, opponent = ARI, result = Tie }
        , { location = Away, opponent = NYJ, result = Tie }
        , { location = Home, opponent = NO, result = Tie }
        , { location = Home, opponent = DET, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = CHI, result = Tie }
        , { location = Home, opponent = GB, result = Tie }
        , { location = Away, opponent = NE, result = Tie }
        , { location = Away, opponent = SEA, result = Tie }
        , { location = Home, opponent = MIA, result = Tie }
        , { location = Away, opponent = DET, result = Tie }
        , { location = Home, opponent = CHI, result = Tie }
        ]
    }


ne : Team
ne =
    { abbr = NE
    , record = initRecord
    , division = East
    , conference = AFC
    , schedule =
        [ { location = Home, opponent = HOU, result = Tie }
        , { location = Away, opponent = JAC, result = Tie }
        , { location = Away, opponent = DET, result = Tie }
        , { location = Home, opponent = MIA, result = Tie }
        , { location = Home, opponent = IND, result = Tie }
        , { location = Home, opponent = KC, result = Tie }
        , { location = Away, opponent = CHI, result = Tie }
        , { location = Away, opponent = BUF, result = Tie }
        , { location = Home, opponent = GB, result = Tie }
        , { location = Away, opponent = TEN, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = NYJ, result = Tie }
        , { location = Home, opponent = MIN, result = Tie }
        , { location = Away, opponent = MIA, result = Tie }
        , { location = Away, opponent = PIT, result = Tie }
        , { location = Home, opponent = BUF, result = Tie }
        , { location = Home, opponent = NYJ, result = Tie }
        ]
    }


no : Team
no =
    { abbr = NO
    , record = initRecord
    , division = South
    , conference = NFC
    , schedule =
        [ { location = Home, opponent = TB, result = Tie }
        , { location = Home, opponent = CLE, result = Tie }
        , { location = Away, opponent = ATL, result = Tie }
        , { location = Away, opponent = NYG, result = Tie }
        , { location = Home, opponent = WAS, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = BAL, result = Tie }
        , { location = Away, opponent = MIN, result = Tie }
        , { location = Home, opponent = LAR, result = Tie }
        , { location = Away, opponent = CIN, result = Tie }
        , { location = Home, opponent = PHI, result = Tie }
        , { location = Home, opponent = ATL, result = Tie }
        , { location = Away, opponent = DAL, result = Tie }
        , { location = Away, opponent = TB, result = Tie }
        , { location = Away, opponent = CAR, result = Tie }
        , { location = Home, opponent = PIT, result = Tie }
        , { location = Home, opponent = CAR, result = Tie }
        ]
    }


nyg : Team
nyg =
    { abbr = NYG
    , record = initRecord
    , division = East
    , conference = NFC
    , schedule =
        [ { location = Home, opponent = JAC, result = Tie }
        , { location = Away, opponent = DAL, result = Tie }
        , { location = Away, opponent = HOU, result = Tie }
        , { location = Home, opponent = NO, result = Tie }
        , { location = Away, opponent = CAR, result = Tie }
        , { location = Home, opponent = PHI, result = Tie }
        , { location = Away, opponent = ATL, result = Tie }
        , { location = Home, opponent = WAS, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Home, opponent = TB, result = Tie }
        , { location = Away, opponent = PHI, result = Tie }
        , { location = Home, opponent = CHI, result = Tie }
        , { location = Away, opponent = WAS, result = Tie }
        , { location = Home, opponent = TEN, result = Tie }
        , { location = Away, opponent = IND, result = Tie }
        , { location = Home, opponent = DAL, result = Tie }
        ]
    }


nyj : Team
nyj =
    { abbr = NYJ
    , record = initRecord
    , division = East
    , conference = AFC
    , schedule =
        [ { location = Away, opponent = DET, result = Tie }
        , { location = Home, opponent = MIA, result = Tie }
        , { location = Away, opponent = CLE, result = Tie }
        , { location = Away, opponent = JAC, result = Tie }
        , { location = Home, opponent = DEN, result = Tie }
        , { location = Home, opponent = IND, result = Tie }
        , { location = Home, opponent = MIN, result = Tie }
        , { location = Away, opponent = CHI, result = Tie }
        , { location = Away, opponent = MIA, result = Tie }
        , { location = Home, opponent = BUF, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = NE, result = Tie }
        , { location = Away, opponent = TEN, result = Tie }
        , { location = Away, opponent = BUF, result = Tie }
        , { location = Home, opponent = HOU, result = Tie }
        , { location = Home, opponent = GB, result = Tie }
        , { location = Away, opponent = NE, result = Tie }
        ]
    }


oak : Team
oak =
    { abbr = OAK
    , record = initRecord
    , division = West
    , conference = AFC
    , schedule =
        [ { location = Home, opponent = LAR, result = Tie }
        , { location = Away, opponent = DEN, result = Tie }
        , { location = Away, opponent = MIA, result = Tie }
        , { location = Home, opponent = CLE, result = Tie }
        , { location = Away, opponent = LAC, result = Tie }
        , { location = Home, opponent = SEA, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = IND, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Home, opponent = LAC, result = Tie }
        , { location = Away, opponent = ARI, result = Tie }
        , { location = Away, opponent = BAL, result = Tie }
        , { location = Home, opponent = KC, result = Tie }
        , { location = Home, opponent = PIT, result = Tie }
        , { location = Away, opponent = CIN, result = Tie }
        , { location = Home, opponent = DEN, result = Tie }
        , { location = Away, opponent = KC, result = Tie }
        ]
    }


phi : Team
phi =
    { abbr = PHI
    , record = initRecord
    , division = East
    , conference = NFC
    , schedule =
        [ { location = Home, opponent = ATL, result = Tie }
        , { location = Away, opponent = TB, result = Tie }
        , { location = Home, opponent = IND, result = Tie }
        , { location = Away, opponent = TEN, result = Tie }
        , { location = Home, opponent = MIN, result = Tie }
        , { location = Away, opponent = NYG, result = Tie }
        , { location = Home, opponent = CAR, result = Tie }
        , { location = Away, opponent = JAC, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = DAL, result = Tie }
        , { location = Away, opponent = NO, result = Tie }
        , { location = Home, opponent = NYG, result = Tie }
        , { location = Home, opponent = WAS, result = Tie }
        , { location = Away, opponent = DAL, result = Tie }
        , { location = Away, opponent = LAR, result = Tie }
        , { location = Home, opponent = HOU, result = Tie }
        , { location = Away, opponent = WAS, result = Tie }
        ]
    }


pit : Team
pit =
    { abbr = PIT
    , record = initRecord
    , division = North
    , conference = AFC
    , schedule =
        [ { location = Away, opponent = CLE, result = Tie }
        , { location = Home, opponent = KC, result = Tie }
        , { location = Away, opponent = TB, result = Tie }
        , { location = Home, opponent = BAL, result = Tie }
        , { location = Home, opponent = ATL, result = Tie }
        , { location = Away, opponent = CIN, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Home, opponent = CLE, result = Tie }
        , { location = Away, opponent = BAL, result = Tie }
        , { location = Home, opponent = CAR, result = Tie }
        , { location = Away, opponent = JAC, result = Tie }
        , { location = Away, opponent = DEN, result = Tie }
        , { location = Home, opponent = LAC, result = Tie }
        , { location = Away, opponent = OAK, result = Tie }
        , { location = Home, opponent = NE, result = Tie }
        , { location = Away, opponent = NO, result = Tie }
        , { location = Home, opponent = CIN, result = Tie }
        ]
    }


sea : Team
sea =
    { abbr = SEA
    , record = initRecord
    , division = West
    , conference = NFC
    , schedule =
        [ { location = Away, opponent = DEN, result = Tie }
        , { location = Away, opponent = CHI, result = Tie }
        , { location = Home, opponent = DAL, result = Tie }
        , { location = Away, opponent = ARI, result = Tie }
        , { location = Home, opponent = LAR, result = Tie }
        , { location = Away, opponent = OAK, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = DET, result = Tie }
        , { location = Home, opponent = LAC, result = Tie }
        , { location = Away, opponent = LAR, result = Tie }
        , { location = Home, opponent = GB, result = Tie }
        , { location = Away, opponent = CAR, result = Tie }
        , { location = Home, opponent = SF, result = Tie }
        , { location = Home, opponent = MIN, result = Tie }
        , { location = Away, opponent = SF, result = Tie }
        , { location = Home, opponent = KC, result = Tie }
        , { location = Home, opponent = ARI, result = Tie }
        ]
    }


sf : Team
sf =
    { abbr = SF
    , record = initRecord
    , division = West
    , conference = NFC
    , schedule =
        [ { location = Away, opponent = MIN, result = Tie }
        , { location = Home, opponent = DET, result = Tie }
        , { location = Away, opponent = KC, result = Tie }
        , { location = Away, opponent = LAC, result = Tie }
        , { location = Home, opponent = ARI, result = Tie }
        , { location = Away, opponent = GB, result = Tie }
        , { location = Home, opponent = LAR, result = Tie }
        , { location = Away, opponent = ARI, result = Tie }
        , { location = Home, opponent = OAK, result = Tie }
        , { location = Home, opponent = NYG, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = TB, result = Tie }
        , { location = Away, opponent = SEA, result = Tie }
        , { location = Home, opponent = DEN, result = Tie }
        , { location = Home, opponent = SEA, result = Tie }
        , { location = Home, opponent = CHI, result = Tie }
        , { location = Away, opponent = LAR, result = Tie }
        ]
    }


tb : Team
tb =
    { abbr = TB
    , record = initRecord
    , division = South
    , conference = NFC
    , schedule =
        [ { location = Away, opponent = NO, result = Tie }
        , { location = Home, opponent = PHI, result = Tie }
        , { location = Home, opponent = PIT, result = Tie }
        , { location = Away, opponent = CHI, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = ATL, result = Tie }
        , { location = Home, opponent = CLE, result = Tie }
        , { location = Away, opponent = CIN, result = Tie }
        , { location = Away, opponent = CAR, result = Tie }
        , { location = Home, opponent = WAS, result = Tie }
        , { location = Away, opponent = NYG, result = Tie }
        , { location = Home, opponent = SF, result = Tie }
        , { location = Home, opponent = CAR, result = Tie }
        , { location = Home, opponent = NO, result = Tie }
        , { location = Away, opponent = BAL, result = Tie }
        , { location = Away, opponent = DAL, result = Tie }
        , { location = Home, opponent = ATL, result = Tie }
        ]
    }


ten : Team
ten =
    { abbr = TEN
    , record = initRecord
    , division = South
    , conference = AFC
    , schedule =
        [ { location = Away, opponent = MIA, result = Tie }
        , { location = Home, opponent = HOU, result = Tie }
        , { location = Away, opponent = JAC, result = Tie }
        , { location = Home, opponent = PHI, result = Tie }
        , { location = Away, opponent = BUF, result = Tie }
        , { location = Home, opponent = BAL, result = Tie }
        , { location = Away, opponent = LAC, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = DAL, result = Tie }
        , { location = Home, opponent = NE, result = Tie }
        , { location = Away, opponent = IND, result = Tie }
        , { location = Away, opponent = HOU, result = Tie }
        , { location = Home, opponent = NYJ, result = Tie }
        , { location = Home, opponent = JAC, result = Tie }
        , { location = Away, opponent = NYG, result = Tie }
        , { location = Home, opponent = WAS, result = Tie }
        , { location = Home, opponent = IND, result = Tie }
        ]
    }


was : Team
was =
    { abbr = WAS
    , record = initRecord
    , division = East
    , conference = NFC
    , schedule =
        [ { location = Away, opponent = ARI, result = Tie }
        , { location = Home, opponent = IND, result = Tie }
        , { location = Home, opponent = GB, result = Tie }
        , { location = Home, opponent = BYE, result = Tie }
        , { location = Away, opponent = NO, result = Tie }
        , { location = Home, opponent = CAR, result = Tie }
        , { location = Home, opponent = DAL, result = Tie }
        , { location = Away, opponent = NYG, result = Tie }
        , { location = Home, opponent = ATL, result = Tie }
        , { location = Away, opponent = TB, result = Tie }
        , { location = Home, opponent = HOU, result = Tie }
        , { location = Away, opponent = DAL, result = Tie }
        , { location = Away, opponent = PHI, result = Tie }
        , { location = Home, opponent = NYG, result = Tie }
        , { location = Away, opponent = JAC, result = Tie }
        , { location = Away, opponent = TEN, result = Tie }
        , { location = Home, opponent = PHI, result = Tie }
        ]
    }
