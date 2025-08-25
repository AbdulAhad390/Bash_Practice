#!/bin/bash 
  

    read -p  "Enter the Marks for subject:   " Value 
    read -p "Enter the marks of Lab:  % " per
   if [[ $Value == "[80-100]"  ]];
   then 
         echo " Passed "

   elif [[ $per -ge 70 ]];

   then 
       echo "Passed "	   
  	   
  else 
       echo  "Failed "
   fi