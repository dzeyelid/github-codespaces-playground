#!/bin/bash

# onCreateCommand は、prebuild テンプレートが作成されるとき 1 度だけ実行されます。
# すなわち、prebuild に影響するファイルが更新されたときに実行されます。

npm install -g npm
npm install -g @azure/static-web-apps-cli
