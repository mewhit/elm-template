'use strict';

require('./index.html');

var Elm = require('../app/Main.elm');

var mountNode = document.getElementById('main');

var elmApp = Elm.Main.fullscreen();
