#!/bin/sh

set -euo pipefail

GENNYD_BIN=/usr/local/bin/gennyd
RESET="\e[0m"
OK="\e[0;32m"
INFO="\e[0;36m"
STD="\e[0;37m"

gennyd_download() {
  printf "$STD ==> downloading 'gennyd' $RESET\n"
  curl -sSL -o "$GENNYD_BIN" \
    https://raw.githubusercontent.com/dguyon/gennyd/master/gennyd
  chmod +x "$GENNYD_BIN"
  printf "$OK Hooray! 'gennyd' is installed on your system: run 'gennyd -h'.$RESET\n"
}

gennyd_check() {
  printf "$STD ==> checking 'gennyd' on your system$RESET\n"

  if command -v "gennyd" > /dev/null 2>&1
  then
    printf "$INFO 'gennyd' is already installed: do you want to reinstall it? (y/n)$RESET\n"
    read -r CHOICE

    # quit
    if [ "$CHOICE" = "n" ]
    then
      exit 0
    fi
  fi
}

main() {
  gennyd_check
  gennyd_download
}

main
exit 0
