# Objective
- Execute ansible playbook from Jenkins build

# Prerequsites
- Install blue ocean plugin

# Tasks to do in dashboard
- Goto jenkins dashboard using machine <ipaddress:8080>
- click on `New Item`
- create `pipeline`
- provide `name & description` for your job
- paste code from file `ansible.pipeline` in pipeline area

# Validate your website
http://<public-ip>:80/mywebsite.html