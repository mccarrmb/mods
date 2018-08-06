#!/bin/bash
ARCHIVE_NAME="`basename \`pwd\``.pk3"

if [ -n `command -v zip` ] ; then
  echo -e "\e[93mBuilding .pk3 archive....\e[0m"
  zip $ARCHIVE_NAME -v -r . -x $0
  if [ $? -eq 0 ] ; then
    echo -e "\e[92mArchive $ARCHIVE_NAME successfully built.\e[0m"
  else
    echo -e "\e[91mArchive build for $ARCHIVE_NAME failed.\e[0m"
  fi
else
  echo -e "\e[91mzip utility not found!\e[0m The \".pk3\" format requires zip container/compression." 
fi
