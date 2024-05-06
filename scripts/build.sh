#!/bin/bash

curl -L -O "https://github.com/googlefonts/Inconsolata/blob/v3.000/fonts/ttf/Inconsolata-Regular.ttf"
curl -L -O "https://github.com/googlefonts/Inconsolata/blob/v3.000/fonts/ttf/Inconsolata-Bold.ttf"
curl -L -O "https://github.com/itouhiro/mixfont-mplus-ipa/releases/download/v2020.0415/circle-mplus-1m-20200415.7z"
curl -L -O "https://ftp.iij.ad.jp/pub/osdn.jp/users/8/8597/mgenplus-20150602.7z"
rm -rf ./mplus-TESTFLIGHT-063a/ ./circle-mplus-1m-20200415/
7z x circle-mplus-1m-20200415.7z
mv circle-mplus-1m-20200415/* ./
