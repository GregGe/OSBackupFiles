#!/bin/sh

# Configure your favorite diff program here.
DIFF="/home/greg/Software/BeyondCompare/bin/bcompare"
# DIFF="/usr/bin/meld"
# DIFF="/usr/bin/kompare"
# DIFF=env LANG=zh_CN.UTF-8 WINEPREFIX="/home/borqs/.wine" wine "C:\\Program Files\\Beyond Compare 2\\BC2.exe"

# Subversion provides the paths we need as the sixth and seventh 
# parameters.
LEFT=${6}
RIGHT=${7}

# Call the diff command (change the following line to make sense for
# your merge program).
$DIFF $LEFT $RIGHT 

# Return an errorcode of 0 if no differences were detected, 1 if some were.
# Any other errorcode will be treated as fatal.
return 0
