#!/bin/bash

BWHITE='\033[1;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

printf "Running ${BWHITE}forge fmt${NC}... \n"
if forge fmt &>/dev/null; then
  printf "${GREEN}Formatted!${NC} \n"
else
  printf "${RED}error running ${BWHITE}forge fmt${NC} \n"
  exit 1
fi

printf "Running ${BWHITE}forge snapshot${NC}... \n"
if forge snapshot &>/dev/null; then
  printf "${GREEN}Snapshotted!${NC} \n"
else
  printf "${RED}error running ${BWHITE}forge snapshot${NC} \n"
  exit 1
fi

git add .
