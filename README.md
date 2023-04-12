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
- Clone the branch v16 of the remote training repo  `git clone --branch v16 https://github.com/nsejim/odoo-development-training.git docker_deployment`
- Change directory into directory docker_deployment `cd docker_deployment`
- Rename ".env.example" to ".env" with the command  `mv .env.example .env`
- Launch a containerised odoo server   `docker-compose up -d`

Now your Odoo instance should be running at the url http://localhost:10016. 
The default master password is "odoo123".

Additional interesting commands
- To stop the odoo server `docker-compose down`
- To restart a running server `docker-compose restart`
- To list running containers `docker-compose ps`

## CONFIGURE GIT IN THE CUSTOM MODULES DIRECTORY

With the above command launching the Odoo server, a new directory (~/Documents/Training/Odoo/custom-addons) has been automatically created. This is where the code of our different custom addons modules will be saved. 
For better collaborative development experience, it is advised to git version the code. 

- open a new terminal
- go the new custom addons directory `cd ~/Documents/Training/Odoo/custom-addons`
- initialize a git repo `git init`
- since we are developing a module for Odoo v16, create a branch v16  `git checkout -b v16`

Now, you are ready for coding your first Odoo custom module

## SCAFFOLD A CUSTOM MODULE

Inside the docker_deployment directory  `~/Documents/Training/Odoo/docker_deployment`, 
- enter into the odoo container using the following command `docker exec -it docker_deployment-odoo-1 /bin/bash`

Inside the container, you can first validate that you have access to the Odoo CLI
- check Odoo version `odoo --version`
- show help ` odoo --help`

Now, to scaffold a new custom module, you can use the Odoo CLI command `scaffold`. 
You can check how to use it using `odoo scaffold --help`

- create a custom module called "sic_training" and save it into the container "custom-addons" directory -> `odoo scaffold sic_training /mnt/custom-addons`

Now if you go into your local custom-addons directory (`~/Documents/Training/Odoo/custom-addons`), you should see the new Odoo module source code. 
You can now "commit" with a message like "scaffolded a new Odoo module". 

## INSTALL CUSTOM MODULE

- restart the odoo server (`docker-compose restart`)
- login in the odoo backend as admin
- Go to apps and "Update App List"
- Search the new module in the apps list.
- Click on "Install"


## DEBUG CUSTOM MODULE

A debug configuration called "Odoo Custom Addons" is included to launch a debugging setup. 
Once it is running, one can place breakpoint in the python code of the custom module.

- 