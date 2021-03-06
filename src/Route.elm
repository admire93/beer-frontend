module Route exposing (Route(Login), createRoute)

import Navigation
import UrlParser as Url


type Route
    = Login


{-| See <https://github.com/evancz/url-parser> for more information.
-}
createRoute : Navigation.Location -> Maybe Route
createRoute l =
    let
        route =
            Url.oneOf [ Url.map Login (Url.s "login") ]
    in
    Url.parseHash route l
