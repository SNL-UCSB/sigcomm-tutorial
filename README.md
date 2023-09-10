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

## Session 2: Trustee
- Web page: https://trusteeml.github.io/
- Trustee paper: https://dl.acm.org/doi/10.1145/3548606.3560609
- Extended version of the paper: https://github.com/TrusteeML/emperor/blob/main/docs/tech-report.pdf

## Session 2: netUnicorn
- Web page: https://netunicorn.cs.ucsb.edu/
- netUnicorn paper: https://doi.org/10.1145/3576915.3623075
- Extended vesiorn of the paper: https://arxiv.org/abs/2306.08853

## Session 3 Participant Instructions
If you are participating in the tutorial, please follow the instructions below to prepare your environment for the hands-on practice:
1. Get the IPv4 address of your virtual machine from one of the instructors.
2. Open the browser and navigate to the following URL: http://<VM_IPv4_address> (notice that it is an HTTP connection, not HTTPS).
3. You will see the Jupyter Lab password prompt. Enter the next password: `sigcommtutorial`.
4. Please, navigate to the `session_3/netunicorn_practice/notebooks` folder and open the `session3.ipynb` notebook.
5. Follow the instructor's instructions to complete the practice.