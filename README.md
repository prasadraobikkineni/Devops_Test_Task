

## Task
1. Please create an automation using Terraform or Cloudformation to provision one Linux VM in AWS capable to run docker containers and with the port 80 exposed to the Internet. 

2. Then create a Dockerfile of a nginx container. 

3. Then create a Cl/CD pipeline using Travis/Github Actions/Jenkins to build and deploy the container in the Linux VM. 

4. Then create a README with all necessary steps in order to run your automation. 


## Preparation
If you don't have AWS Access Credentials, create your AWS Access Key ID and Secret Access Key by navigating to your [IAM security credentials](https://console.aws.amazon.com/iam/home#security_credential) in the AWS console. Click "Create access key" here and download the file. This file contains your access credentials.

Generate public and private key for authorization on the server via ssh:

```bash
  ssh-keygen -b 4096 -t rsa -f ./deployer -q -N ""
```

## Environment Variables

To run this project, you will need to add the following environment variables

### Terraform Cloud

`AWS_SECRET_ACCESS_KEY`

`AWS_ACCESS_KEY_ID`

### Github Secrets

`TF_API_TOKEN`

`SSH_PRIVATE_KEY_DEPLOYER`

`EC2_HOST_01`


## Run Locally

Clone the project && Go to the project directory

```bash
  git clone https://link-to-project && cd my-project
```

Generate public and private key

```bash
  ssh-keygen -b 4096 -t rsa -f ./infra/deployer -q -N ""
```

Keep your private key in a safe place

```bash
  cp ./infra/deployer /home/<user>/safe-place/
```

Delete private key from repo

```bash
  rm ./infra/deployer
```

Install terraform and login

```bash
  wget https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_linux_amd64.zip
  sudo unzip ./terraform_1.0.1_linux_amd64.zip -d /usr/local/bin/
  terraform login
  terraform init
  terraform apply
```


## Acknowledgements

 - [Automate Terraform with GitHub Actions](https://learn.hashicorp.com/tutorials/terraform/github-actions)
 - [What is SSH Public Key authentication?](https://www.ssh.com/academy/ssh/public-key-authentication)
 - [How To Configure SSH Key-Based Authentication on a Linux Server](https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server)
 - [AWS CloudShell](https://aws.amazon.com/cloudshell/https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server)
 - [Run your Github Actions jobs from a specific directory](https://dev.to/shofol/run-your-github-actions-jobs-from-a-specific-directory-1i9e)
