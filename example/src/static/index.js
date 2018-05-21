// pull in desired CSS/SASS files
require('../../../assets/scss/ui-frontend.scss');

// inject bundled Elm app into div#main
var Elm = require( '../elm/Main.elm' );
Elm.Main.embed( document.getElementById( 'main' ) );
