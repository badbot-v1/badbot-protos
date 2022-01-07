#!/bin/sh

mkdir -p ./protojs

../../../node_modules/.bin/pbjs -t static-module -p ./badbot-protos/ -o ./protojs/consts.js -w commonjs ./badbot-protos/consts.proto
../../../node_modules/.bin/pbts -o ./protojs/consts.d.ts ./protojs/consts.js

../../../node_modules/.bin/pbjs -t static-module -p ./badbot-protos/ -o ./protojs/cmd_operational_mode.js -w commonjs ./badbot-protos/cmd_operational_mode.proto
../../../node_modules/.bin/pbts -o ./protojs/cmd_operational_mode.d.ts ./protojs/cmd_operational_mode.js

../../../node_modules/.bin/pbjs -t static-module -p ./badbot-protos/ -o ./protojs/botstatus.js -w commonjs ./badbot-protos/botstatus.proto
../../../node_modules/.bin/pbts -o ./protojs/botstatus.d.ts ./protojs/botstatus.js

../../../node_modules/.bin/pbjs -t static-module -p ./badbot-protos/ -o ./protojs/cmdtoggle.js -w commonjs ./badbot-protos/cmdtoggle.proto
../../../node_modules/.bin/pbts -o ./protojs/cmdtoggle.d.ts ./protojs/cmdtoggle.js

../../../node_modules/.bin/pbjs -t static-module -p ./badbot-protos/ -o ./protojs/cmdvel.js -w commonjs ./badbot-protos/cmdvel.proto
../../../node_modules/.bin/pbts -o ./protojs/cmdvel.d.ts ./protojs/cmdvel.js

../../../node_modules/.bin/pbjs -t static-module -p ./badbot-protos/ -o ./protojs/videoframe.js -w commonjs ./badbot-protos/videoframe.proto
../../../node_modules/.bin/pbts -o ./protojs/videoframe.d.ts ./protojs/videoframe.js

../../../node_modules/.bin/pbjs -t static-module -p ./badbot-protos/ -o ./protojs/message.js -w commonjs ./badbot-protos/message.proto
../../../node_modules/.bin/pbts -o ./protojs/message.d.ts ./protojs/message.js