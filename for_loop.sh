   #!/bin/bash
   # For & while Loop 
    
 # 1 = is argument which is folder name 
 # 2 = is start range
 # 3 = end range
   

    for (( num=$2 ; num<=$3 ; num++ ))
     do 
       mkdir "$1$num"

    done       
