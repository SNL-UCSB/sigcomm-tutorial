#!/bin/bash
echo "ubuntu:sigcommtutorial" | chpasswd
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
DEBIAN_FRONTEND=noninteractive apt-get update && apt-get upgrade -y && apt-get install -y python3-pip curl git
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

docker pull pinot.cs.ucsb.edu/cicflowmeter:latest
docker pull pinot.cs.ucsb.edu/sigcommtutorial:latest

git clone https://github.com/maybe-hello-world/sigcomm-tutorial.git /sigcommtutorial

# prepare for session 3 - netunicorn
pip3 install -r /sigcommtutorial/requirements.txt && cd /sigcommtutorial/session_3/netunicorn_practice && docker compose -f netunicorn-compose.yml up -d

# jupyter, password: sigcommtutorial
jupyter lab --no-browser --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.password='argon2:$argon2id$v=19$m=10240,t=10,p=8$3XgMepqCMSodsKa9YtxXXg$5fjlph20kPgiDXYvPP47HIz1GmdLZg4ISvY5lPc+ILE' --notebook-dir=/sigcommtutorial/
