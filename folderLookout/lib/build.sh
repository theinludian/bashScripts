#! /bin/bash
cpvar=$1
cpvar+=$2

result=$(find lib/fileHistory.txt -type f -print | xargs grep $2)
if [[ $result != *$2* ]]
then
   if cp $cpvar "results/." ; then
      echo "File copied"
   fi


   if $2 >> "lib/fileHistory.txt" ; then
     echo "Filename recorded"
   fi
fi
