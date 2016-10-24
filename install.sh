#!/bin/sh

set -e

GENNYD_BIN=/usr/local/bin/gennyd

gennyd_download() {
  printf "==> downloading 'gennyd' \n"
  curl -sSL -o "$GENNYD_BIN" \
    https://raw.githubusercontent.com/dguyon/gennyd/master/gennyd
  chmod +x "$GENNYD_BIN"
  printf "Hooray! 'gennyd' is installed on your system: run 'gennyd -h'.\n"
}

gennyd_check() {
  printf "==> checking 'gennyd' on your system\n"

  if command -v "gennyd" > /dev/null 2>&1
  then
    printf "'gennyd' is already installed: do you want to reinstall it? (y/n)\n"
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
