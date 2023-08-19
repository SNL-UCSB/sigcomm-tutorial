echo "ubuntu:sigcommtutorial" | chpasswd
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
DEBIAN_FRONTEND=noninteractive apt-get update && apt-get upgrade -y && apt-get install -y python3-pip curl git
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh