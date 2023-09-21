# Install jenkins steps

# Prerequsites
- java
- ca-certificates

# Ubuntu 
- sudo apt update
- sudo apt install default-jre -y
- sudo apt install openjdk-11-jdk -y
- sudo apt install openjdk-11-jre-headless -y
- sudo apt-get install default-jdk -y
- sudo apt install ca-certificates -y
- curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
- sudo apt update
- sudo apt install jenkins -y
- sudo systemctl start jenkins 

# Centos
- sudo yum install java-1.8.0-openjdk-devel
- sudo wget –O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
- sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
- sudo yum install jenkins
- systemctl start jenkins

# Initial setup in jenkins machine
- check if jenkins user is created 
  `id jenkins`

- Ensure jenkins has bash shell 
  `cat /etc/passwd`
   check if this line is present in file `jenkins:x:114:120:Jenkins,,,:/var/lib/jenkins:/bin/bash`

- Provide full privilage for jenkins user
  * switch to root user `sudo su`
  * goto sudoers file `visudo`
  * add line `%superadmin ALL=(ALL)       NOPASSWD: ALL`
  * `groupadd superadmin`
  * `usermod -aG superadmin jenkins`

- Check if jenkins has all access
  * switch to jenkins user `sudo su - jenkins`
  * `sudo -l`
  
  # Created dedicated github repo for jenkins jobs
    * Created one in name of `training-jenkins-jobs` for practice purpose