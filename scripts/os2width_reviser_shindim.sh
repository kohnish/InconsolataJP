#!/bin/sh
ttx -t OS/2 RictyShinDiminished*.ttf
find RictyShinDiminished*.ttx | xargs sed -i "s/xAvgCharWidth value=\".../xAvgCharWidth value=\"500/g"
# for Mac
# find RictyShinShinDiminished*.ttx | xargs sed -i .bak "s/xAvgCharWidth value=\".../xAvgCharWidth value=\"500/g"
rename "s/ttf/ttb/;" RictyShinDiminished*.ttf
ttx -m RictyShinDiminished-Bold.ttb RictyShinDiminished-Bold.ttx
ttx -m RictyShinDiminished-BoldOblique.ttb RictyShinDiminished-BoldOblique.ttx
ttx -m RictyShinDiminished-Oblique.ttb RictyShinDiminished-Oblique.ttx
ttx -m RictyShinDiminished-Regular.ttb RictyShinDiminished-Regular.ttx
ttx -m RictyShinDiminishedDiscord-Bold.ttb RictyShinDiminishedDiscord-Bold.ttx
ttx -m RictyShinDiminishedDiscord-BoldOblique.ttb RictyShinDiminishedDiscord-BoldOblique.ttx
ttx -m RictyShinDiminishedDiscord-Oblique.ttb RictyShinDiminishedDiscord-Oblique.ttx
ttx -m RictyShinDiminishedDiscord-Regular.ttb RictyShinDiminishedDiscord-Regular.ttx
rm -f *.ttb
rm -f *.ttx
