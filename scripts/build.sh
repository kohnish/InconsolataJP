#!/bin/bash

set -e

curl -L -O "https://github.com/googlefonts/Inconsolata/releases/download/v3.000/fonts_ttf.zip"
curl -L -O "https://github.com/itouhiro/mixfont-mplus-ipa/releases/download/v2020.0415/circle-mplus-1m-20200415.7z"
curl -L -O "https://ftp.iij.ad.jp/pub/osdn.jp/users/8/8597/mgenplus-20150602.7z"

rm -rf ./mplus-TESTFLIGHT-* ./circle-mplus-1m-*/ *.ttf *.txt fonts/ thirdparty-dependency-backup/ InconsolataJP/

7z x fonts_ttf.zip
7z x circle-mplus-1m-20200415.7z
7z x mgenplus-20150602.7z

mv fonts/ttf/* ./
mv circle-mplus-1m-20200415/* ./

./ricty_shindim_generator.sh auto

./os2width_reviser_shindim.sh

mkdir -p thirdparty-dependency-backup
mv fonts_ttf.zip thirdparty-dependency-backup/
mv circle-mplus-1m-20200415.7z thirdparty-dependency-backup/
mv mgenplus-20150602.7z thirdparty-dependency-backup
zip -r thirdparty-dependency-backup.zip thirdparty-dependency-backup

mkdir -p InconsolataJP
mv InconsolataJP*.ttf InconsolataJP/
zip -r InconsolataJP.zip InconsolataJP
