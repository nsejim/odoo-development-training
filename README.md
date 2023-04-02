# ODOO DEVELOPMENT TRAINING

## PREREQUISITES TOOLS

On your local machine, you need to have
- Docker v20+
- Git (latest)
- Visual Studio Code IDE or any other IDE of your choice
- Terminal

## CREATE A WORKING DIRECTORY

With your terminal, go to your documents directory
- `cd ~/Documents`

Create the working directory with the following command 
- `mkdir -p Training/Odoo`


## SETUP & LAUNCH DOCKER DEPLOYMENT ENVIRONMENT

Inside your working directory (~/Documents/Training/Odoo) and using your terminal,  
- Clone the branch v16 of the remote training repo  `git clone`
- Rename ".env.example" to ".env"   `mv .env.example .env`
- Launch a containerised odoo server   `docker-compose up -d`

Now your Odoo instance should be running at the url http://localhost:10016. 
You will have to define a super admin Odoo password.

Additional commands to manage the odoo server
- To stop the odoo server `docker-compose down`
- To restart a running server `docker-compose restart`


## CONFIGURE GIT IN THE CUSTOM MODULES DIRECTORY

With the above command launching the Odoo server, a new directory (~/Documents/Training/Odoo/custom-addons) has been automatically created. This is where the code of our different custom addons modules will be saved. 
For better collaborative development experience, it is advised to git version the code. 

- open a new terminal
- go the new custom addons directory `cd ~/Documents/Training/Odoo/custom-addons`
- initialize a git repo `git init`
- since we are developing a module for Odoo v16, create a branch v16  `git checkout -b v16`

Now, you are ready for coding your first Odoo custom module

## SCAFFOLD A CUSTOM MODULE
