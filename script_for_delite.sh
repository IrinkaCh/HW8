#!/bin/bash

directory=$1

if [ -d $directory ]
 then
  for suf in .bak .tmp .backup
  do
    for file in $(ls -a $directory | grep ${suf})
    do
      rm $directory/$file
      echo $directory/$file
     done
   done
else
  echo "Dir does not exist"
