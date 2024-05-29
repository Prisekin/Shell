#!/bin/sh
tput cl
echo "`tput longname`"
echo "Terminal size: `tput cols`x`tput lines`"
# hide cursor
echo "[?25h"
#set BOLD mode
echo "[1m"
echo "Example of BOLD text"
#set GREEN text color
echo "[40;32m"
echo "Example of CREEN BOLD TEXT"
echo "[4m"
echo "[5m"
echo -n "[40;31m"
echo "Example of RED underlined text"
echo -n "[40;37m"
echo "[0m"
