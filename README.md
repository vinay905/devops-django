DevOps Django Project
This repository contains the setup for a DevOps Django project. The project includes creating a Django application, setting up a Docker container for the application, and configuring Jenkins for CI/CD.

*Repository->https://github.com/vinay905/devops-django.git

*Prerequisite 

-> Docker installed and configured 

-> Jenkins installed and configured to access the docker

Project Setup
Step 1: Create a Virtual Environment
  *mkdir PythonDevops
  
  *cd PythonDevops
  
  *python -m venv devopsenv
  
  *devopsenv\scripts\activate

Step 2: Install Dependencies

*pip install django

*pip install pytest

Step 3: Start a Django Project

*django-admin startproject myproject

*cd myproject

*python manage.py startapp myapp

Folder Structure
![image](https://github.com/user-attachments/assets/cf748962-ea79-4193-a09f-5f66f5d6a3d4)

myproject/

    ├── manage.py
    
    ├── myapp/
    
    ├── myproject/
    
    ├── requirements.txt
    
    ├── pytest.ini
    
    ├── mytests/
    
    │   ├── __init__.py
    
    │   ├── apps.py
    
    │   ├── views.py
    
    │   ├── test_views.py
    
    │   └── urls.py
    
    ├── Dockerfile
    
    ├── Jenkinsfile
    
    └── Report.xml

Step 4:create a requirements.txt in myproject directory

Add the following dependencies to requirements.txt:

*asgiref==3.8.1

*Django==5.0.7

*sqlparse==0.5.0

*tzdata==2024.1

*pytest

*pytest-django

Step 5:Create a dockerfile and a jenkinsfile in the root directory

dockerfile
![image](https://github.com/user-attachments/assets/940fd715-3e87-42e2-8451-1b15695a2a9a)

jenkinsfile
![image](https://github.com/user-attachments/assets/096f122f-b2a0-4d72-83f7-084055f12577)

Step 6:create a docker build and the run to check the working of docker file

*docker build -t testcases .

*docker run testcases

*if success you will see
![image](https://github.com/user-attachments/assets/af39d516-d124-4e83-b9e4-64a6599262b8)


step 7:
go to jenkins in browser and login to your jenkins account

*create a jenkins job dashboard->new items

![image](https://github.com/user-attachments/assets/5b4b1223-6914-4c1d-b5db-81aed15f125e)
->give it a name and select pipeline option

->configure according to the image
![image](https://github.com/user-attachments/assets/116e6fd0-1eeb-49b4-9acb-610bdd27a6b3)

->then click apply and save. Once saved it will look like
![image](https://github.com/user-attachments/assets/07239219-b964-4ef1-bf27-8c7a23b13b4e)

->click build now to start a build , click on the build and select console output to see the progress step by step
![image](https://github.com/user-attachments/assets/bbda4664-725b-422d-ab02-14a913ba3aa0)

->once succssfull it will show :
![image](https://github.com/user-attachments/assets/b47b57f9-f69d-4992-86e9-26da65afd0be)

->build will show green tick meaning pipeline was success and docter container successfully ran and completed tests




