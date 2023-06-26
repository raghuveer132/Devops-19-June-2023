# Git ignore

- You might be in an situation to maintain some files not tracked by Git

- To solve this kind of situation git has an solution called `.gitignore`

- Create file called `.gitignore` under your project directory

- Create some sample files which need to be ignored & update those file details in `.gitignore`

## sample .gitignore file structure

* ignore files
- aws_credentials
- azure_credentials

* ignore folder and files inside 
- apache/index.html
- apache/config.html

* ignore complete folder
- apache/*

## Note

- same procedure might not work if incase you are trying with existing files which is already managed by git,  because those files are exist before we create `.gitignore` file

- if incase you want to add existing file 
    * first add the file in `.gitignore`
    * then just try to do some modification of the file the make a new commit of it. 