#!/bin/bash

set -e

ttx -t OS/2 InconsolataJP*.ttf
find InconsolataJP*.ttx | xargs sed -i "s/xAvgCharWidth value=\".../xAvgCharWidth value=\"500/g"
# for Mac
# find RictyShinShinDiminished*.ttx | xargs sed -i .bak "s/xAvgCharWidth value=\".../xAvgCharWidth value=\"500/g"

for file in InconsolataJP*.ttf; do
    mv -- "$file" "${file%.ttf}.ttb"
done

ttx -m InconsolataJP-Bold.ttb InconsolataJP-Bold.ttx
ttx -m InconsolataJP-BoldOblique.ttb InconsolataJP-BoldOblique.ttx
ttx -m InconsolataJP-Oblique.ttb InconsolataJP-Oblique.ttx
ttx -m InconsolataJP-Regular.ttb InconsolataJP-Regular.ttx
rm -f *.ttb
rm -f *.ttx
