module DefaultTests
    exposing
        ( defaultTestSuite
        )

import Test
    exposing
        ( describe
        , test
        , Test
        )
import Expect
    exposing
        ( equal
        , Expectation
        )


defaultTestSuite : Test
defaultTestSuite =
    describe "Default Tests Tests"
        [ test "test" <|
            \_ -> "test" |> equal "test"
        ]
