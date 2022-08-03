#!/bin/bash

# updateContentCommand では、コンテンツが更新された増分ビルドの際に実行されます。
# パッケージのインストールなどをしておくことで、立上げ後すぐに利用できます。

if [ -d "frontend/app" ]; then
pushd frontend/app
npm install
popd
fi

if [ -d "frontend/app/api" ]; then
pushd frontend/app/api
npm install
npm run build
if [ ! -e "local.settings.json" ]; then
cp local.settings.development.json local.settings.json
fi
popd
fi

if [ -d "backend" ]; then
pushd backend
npm install
npm run build
if [ ! -e "local.settings.json" ]; then
cp local.settings.development.json local.settings.json
fi
popd
fi
