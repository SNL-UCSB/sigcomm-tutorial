#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

docker pull pinot.cs.ucsb.edu/cicflowmeter:latest
docker pull pinot.cs.ucsb.edu/sigcommtutorial:latest

# prepare for session 3 - netunicorn
cd /sigcommtutorial/session_3/netunicorn && docker compose -f netunicorn-compose.yml up -d

# install dependencies
pip3 install -r /sigcommtutorial/requirements.txt

# jupyter, password: sigcommtutorial
jupyter lab --no-browser --ip=0.0.0.0 --port=8888 --allow-root --KernelSpecManager.ensure_native_kernel=False --MultiKernelManager.default_kernel_name=venv --NotebookApp.password='argon2:$argon2id$v=19$m=10240,t=10,p=8$3XgMepqCMSodsKa9YtxXXg$5fjlph20kPgiDXYvPP47HIz1GmdLZg4ISvY5lPc+ILE' --notebook-dir=/sigcommtutorial/
