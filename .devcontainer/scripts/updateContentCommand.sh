#!/bin/bash

# updateContentCommand では、コンテンツが更新された増分ビルドの際に実行されます。
# パッケージのインストールなどをしておくことで、立上げ後すぐに利用できます。
pushd app
npm install
popd
