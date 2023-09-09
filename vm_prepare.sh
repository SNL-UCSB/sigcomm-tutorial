#!/bin/bash
echo "ubuntu:sigcommtutorial" | chpasswd
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
DEBIAN_FRONTEND=noninteractive apt-get update && apt-get upgrade -y && apt-get install -y python3-pip curl git python3-venv

git clone https://github.com/maybe-hello-world/sigcomm-tutorial.git /sigcommtutorial

chmod +x /sigcommtutorial/vm_prepare_2.sh
/bin/bash /sigcommtutorial/vm_prepare_2.sh