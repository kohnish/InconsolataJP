#!/bin/sh
ttx -t OS/2 InconsolataJP*.ttf
find InconsolataJP*.ttx | xargs sed -i "s/xAvgCharWidth value=\".../xAvgCharWidth value=\"500/g"
# for Mac
# find RictyShinShinDiminished*.ttx | xargs sed -i .bak "s/xAvgCharWidth value=\".../xAvgCharWidth value=\"500/g"
rename "s/ttf/ttb/;" InconsolataJP*.ttf
ttx -m InconsolataJP-Bold.ttb InconsolataJP-Bold.ttx
ttx -m InconsolataJP-BoldOblique.ttb InconsolataJP-BoldOblique.ttx
ttx -m InconsolataJP-Oblique.ttb InconsolataJP-Oblique.ttx
ttx -m InconsolataJP-Regular.ttb InconsolataJP-Regular.ttx
ttx -m InconsolataJPDiscord-Bold.ttb InconsolataJPDiscord-Bold.ttx
ttx -m InconsolataJPDiscord-BoldOblique.ttb InconsolataJPDiscord-BoldOblique.ttx
ttx -m InconsolataJPDiscord-Oblique.ttb InconsolataJPDiscord-Oblique.ttx
ttx -m InconsolataJPDiscord-Regular.ttb InconsolataJPDiscord-Regular.ttx
rm -f *.ttb
rm -f *.ttx
