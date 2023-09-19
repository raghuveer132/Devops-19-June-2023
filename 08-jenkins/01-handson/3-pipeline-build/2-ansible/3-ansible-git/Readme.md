# Objective
- Execute ansible playbook from Jenkins build
- Added parameters to give host details from jenkins dashboard

# Prerequsites
- Install blue ocean plugin

# Tasks to do in dashboard
- Goto jenkins dashboard using machine <ipaddress:8080>
- click on `New Item`
- create `pipeline`
- provide `name & description` for your job

# Create Web-hook
- To make your Jenkins to talk with Git you may need to create web-hook.
- Goto your repo → settings → click on Web-hooks → Add web-hooks → Provide your Jenkins url details
- `http://machineip:8080/github-webhook/`

# Poll SCM
- Using poll SCM you can just look for new update every time in your git repo.
- If there is any update your Jenkins will trigger the job automatically.
- schedule formate
  * * * * * 

# Git tasks
- create fresh repo in git
- push all your codes in git as shown
- create new build in jenkins
- select `pipeline script from SCM`
- select `Git`
- Repositories url `add git url`

# Credential store
- Once your Git repo is ready, you can just update credentials of your Git in Jenkins credential store
- Create new build and in build are you can provide your Git repo link and → add credentials
- Manage Jenkins → Manage credentials To view credentials added

# Validate your website
  http://<public-ip>:80/mywebsite.html