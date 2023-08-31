# Prerequsites
Have `t2.micro` ec2 instance installed
Make sure security group has all ports open (inbound/outbound)
Use `ubuntu` latest ami image to create EC2 instance

# Kubeadm install in worker nodes (worker)
apt install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
apt update
apt install -y kubeadm kubelet kubectl

# Docker installation in worker nodes (worker)
apt update
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt-cache policy docker-ce
apt install docker-ce
systemctl status docker

# Paste the token from master machine
kubeadm join 192.168.49.2:8443 --token gixhct.y5xxxxxx0vcqq --discovery-token-ca-cert-hash sha256:9c5dff094xxxxxxxe8c656b794bebffcf5c9xxxxxxxb08246cb9542aa

# Verify if nodes are added to master
- Switch back to master machine and run `kubectl get nodes`