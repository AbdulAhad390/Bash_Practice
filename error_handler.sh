 #!/bin/bash 
 



   create_directory () {
            mkdir demo

                }
	
  if ! 	create_directory; then 
	  echo "The code is being esisted as the directory already existes " 
	  exit 1
  fi

 echo  " this should not worked bcz the code is interrupted " 


