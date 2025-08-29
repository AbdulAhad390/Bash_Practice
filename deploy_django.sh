#!/bin/bash 
 <<Task
 
 Deploy a Django app 
 and handle the code for errors 

Task


  code_clone () {
         
	  echo " Cloning the Django App " 
	  git clone 
  
  
  }

  install_requirements() {
        echo " Installing Dependices " 
	sudo apt-get install docker.io nginx -y
  
  
  }

  required_restarts() {
        sudo systemctl enable docker
	sudo systemctl enable nginix
  
  }
