#!/usr/bin/env bash

FILENAME="${HOME}/Pictures/Screenshots/$(date +%Y.%m.%d-%H.%M.%S).screenshot.png"
SELECTION=false
CLIPBOARD=false


 while test $# -gt 0; do
         case "$1" in
              -s)
                  shift
                  SELECTION=true
                  ;;
              -c)
                  shift
                  CLIPBOARD=true
                  ;;
              *)
                 echo "$1 is not a recognized flag!"
                 break
                 ;;
        esac
done  

if [ $SELECTION == true ]; then
  maim -s -u -b 3 -m 5 "${FILENAME}"
  exit 0
fi

if [ $CLIPBOARD == true ]; then
  maim -u -b 3 -m 5 "${FILENAME}" && xclip -selection clipboard -t image/png "${FILENAME}" &>/dev/null
  exit 0
fi

if [[ ( $CLIPBOARD == true ) && ( $SELECTION == true ) ]]; then
  maim -s -u -b 3 -m 5 "${FILENAME}" && xclip -selection clipboard -t image/png "${FILENAME}" &>/dev/null
  exit 0
fi

maim -u -b 3 -m 5 "${FILENAME}"
exit 0
