#!/bin/bash
ARCHIVE_NAME="`basename \`pwd\``.pk3"

if [ -n `command -v zip` ] ; then
  printf "\e[93mBuilding .pk3 archive....\e[0m\n"
  zip $ARCHIVE_NAME -v -r . -x $0
  if [ $? -eq 0 ] ; then
    printf "\e[92mArchive $ARCHIVE_NAME successfully built.\e[0m\n"
  else
    printf "\e[91mArchive build for $ARCHIVE_NAME failed.\e[0m\n"
  fi
else
  printf "\e[91mzip utility not found!\e[0m The \".pk3\" format requires zip container/compression.\n" 
fi
