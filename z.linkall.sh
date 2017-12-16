#!/bin/bash


mv ../red-agate-util/node_modules       ../red-agate-util/__node_modules__
mv ../red-agate-math/node_modules       ../red-agate-math/__node_modules__
mv ../red-agate-svg-canvas/node_modules ../red-agate-svg-canvas/__node_modules__
mv ../red-agate/node_modules            ../red-agate/__node_modules__
mv ../red-agate-barcode/node_modules    ../red-agate-barcode/__node_modules__

mv ../red-agate-util/.babelrc       ../red-agate-util/__babelrc__
mv ../red-agate-math/.babelrc       ../red-agate-math/__babelrc__
mv ../red-agate-svg-canvas/.babelrc ../red-agate-svg-canvas/__babelrc__
mv ../red-agate/.babelrc            ../red-agate/__babelrc__
mv ../red-agate-barcode/.babelrc    ../red-agate-barcode/__babelrc__

mv ../red-agate-util/webpack.config.js       ../red-agate-util/__webpack_config_js__
mv ../red-agate-math/webpack.config.js       ../red-agate-math/__webpack_config_js__
mv ../red-agate-svg-canvas/webpack.config.js ../red-agate-svg-canvas/__webpack_config_js__
mv ../red-agate/webpack.config.js            ../red-agate/__webpack_config_js__
mv ../red-agate-barcode/webpack.config.js    ../red-agate-barcode/__webpack_config_js__

#npm link ../red-agate-util
#npm link ../red-agate-math
#npm link ../red-agate-svg-canvas
#npm link ../red-agate
#npm link ../red-agate-barcode

ln -s ../../red-agate-util       ./node_modules/red-agate-util
ln -s ../../red-agate-math       ./node_modules/red-agate-math
ln -s ../../red-agate-svg-canvas ./node_modules/red-agate-svg-canvas
ln -s ../../red-agate            ./node_modules/red-agate
ln -s ../../red-agate-barcode    ./node_modules/red-agate-barcode

