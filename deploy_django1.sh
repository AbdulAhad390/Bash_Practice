#!/bin/bash 
 <<Task
 
 Deploy a Django app 
 and handle the code for errors 

Task


  code_clone () {
         
	  echo " Cloning the Django App " 
	  git clone https://github.com/LondheShubham153/django-notes-app.git
  
  
  }

  install_requirements() {
        echo " Installing Dependices " 
	sudo apt-get install docker.io nginx -y docker-compose
  
  
  }

  required_restarts() {

        sudo chown $USER  /var/run/docker.sock 
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
        #sudo  systemctl restart docker
  }

  deploy() {
             docker build -t notes-app .
             #docker run -d -p 8000:8000 notes-app:latest
              docker-compose -d  
  
  
  }

  echo " Deploymeny started "
  if ! code_clone; then 
	  echo " the code directory already exists "
	  cd django-notes-app
  fi
  if ! install_requirements; then
	  echo " Installation Failed "
	  exit 1
  fi
  if ! required_restarts; then 
	  echo "System fault identified "
	  exit 1 
  fi
 if !  deploy; then 
	 echo "Deployment Failed "
	 # sendmail 
	 exit 1
fi
  echo " Deployment Done   "
