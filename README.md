# ACM SIGCOMM 2023 Tutorial: Closed-Loop “ML for Networks” Pipelines

This is a repository with supporting materials for ACM SIGCOMM 2023 Tutorial: Closed-Loop “ML for Networks” Pipelines.  

The repository structured as follows:
* requirements.txt - contains the list of required Python packages
* vm_prepare.sh - script to prepare the VM for the tutorial
* session_1: this folder contains demo materials for the first session of the tutorial
* session_3: this folder contains demo materials for the third session of the tutorial
  * trustee_practice: this folder contains hands-on materials for Trustee practice of session 3
  * netunicorn_practice: contains hands-on materials for netUnicorn practice
    * notebooks: contains Jupyter notebooks for netUnicorn practice
    * scripts: contains preconfiguration scripts. These scripts are used by Docker Compose.
    * netunicorn-compose.yml - docker-compose file for netUnicorn practice
    * additional_materials: contains additional (optional) materials for the netUnicorn practice

## Session 3 Participant Instructions
If you are participating in the tutorial, please follow the instructions below to prepare your environment for the hands-on practice:
1. Get the IPv4 address of your virtual machine from one of the instructors.
2. Open the browser and navigate to the following URL: http://<VM_IPv4_address> (notice that it is an HTTP connection, not HTTPS).
3. You will see the Jupyter Lab password prompt. Enter the next password: `sigcommtutorial`.
4. Please, navigate to the `session_3/netunicorn_practice/notebooks` folder and open the `session3.ipynb` notebook.
5. Follow the instructor's instructions to complete the practice.