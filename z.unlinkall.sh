#!/bin/bash

#npm unlink red-agate-barcode
#npm unlink red-agate
#npm unlink red-agate-svg-canvas
#npm unlink red-agate-math
#npm unlink red-agate-util

unlink ./node_modules/red-agate-barcode
unlink ./node_modules/red-agate
unlink ./node_modules/red-agate-svg-canvas
unlink ./node_modules/red-agate-math
unlink ./node_modules/red-agate-util

mv ../red-agate-util/__node_modules__       ../red-agate-util/node_modules
mv ../red-agate-math/__node_modules__       ../red-agate-math/node_modules
mv ../red-agate-svg-canvas/__node_modules__ ../red-agate-svg-canvas/node_modules
mv ../red-agate/__node_modules__            ../red-agate/node_modules
mv ../red-agate-barcode/__node_modules__    ../red-agate-barcode/node_modules

mv ../red-agate-util/__babelrc__       ../red-agate-util/.babelrc
mv ../red-agate-math/__babelrc__       ../red-agate-math/.babelrc
mv ../red-agate-svg-canvas/__babelrc__ ../red-agate-svg-canvas/.babelrc
mv ../red-agate/__babelrc__            ../red-agate/.babelrc
mv ../red-agate-barcode/__babelrc__    ../red-agate-barcode/.babelrc

mv ../red-agate-util/__webpack_config_js__       ../red-agate-util/webpack.config.js
mv ../red-agate-math/__webpack_config_js__       ../red-agate-math/webpack.config.js
mv ../red-agate-svg-canvas/__webpack_config_js__ ../red-agate-svg-canvas/webpack.config.js
mv ../red-agate/__webpack_config_js__            ../red-agate/webpack.config.js
mv ../red-agate-barcode/__webpack_config_js__    ../red-agate-barcode/webpack.config.js
