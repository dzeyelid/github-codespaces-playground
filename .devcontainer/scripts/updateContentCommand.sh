#!/bin/bash

# updateContentCommand では、コンテンツが更新された増分ビルドの際に実行されます。
# パッケージのインストールなどをしておくことで、立上げ後すぐに利用できます。

if [ -d "app" ]; then
pushd app
npm install
popd
fi

if [ -d "app/api" ]; then
pushd app/api
npm install
npm run build
if [ ! -e "local.settings.json" ]; then
cp local.settings.development.json local.settings.json
fi
popd
fi
