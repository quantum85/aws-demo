# aws-demo


Hi! First of all thanks for the interesting task!
Please find the resulting scripts here and the explanation below. 
#### I would divide the tasks into the following
##### 1. AWS EC2 Deployment automation.
##### 2. Jenkins Pipeline plus GitHub binding.
##### 3. Docker simplest container + ECR

###### ***1. AWS EC2 Deployment automation.***
Since I'm studying Ansible I decided to try it with AWS by automating EC2 deploying and configuration. 
There are two scripts regards this task: ***CreateEC2Play.yml*** and ***user_data.sh***.
***CreateEC2Play.yml*** is the Ansible playbook itself it takes the following actions: 
a). Deploys t2-micro instance.
b). Applies user data described in the user_data.sh (Docker installation plus Jenkins container deploying)
c). Returns a Public IP of the deployed instance into the console.

###### ***2. Jenkins Pipeline plus GitHub binding.***
As you can see the chosen SCM for this task is GitHub so that to automate the deployment process I configured ***GitHub WebHook*** to get real-time updates from the GitHub repository and kick-off Docker build and deploy Pipeline. Each push to the repo sends HTTP POST to my Jenkins server which configured to start the Jenkins-demo pipeline.
Actually, there is an option "from the box" of Jenkins, it can check changes in a repo by schedule and if there is any it can start Pipeline. Using this approach you do not need to configure Webhook from the repository side. But I decided to go with webhook (just for training).

###### 3.***Docker simplest container + ECR*** 
As for my application, to be honest, I just found a simple python code, took a simple python docker container as a base image, and added it to my image. Also, I manually configured ECR to push the built container there. Please find Docker commands in Jenkinsfile.

APP URL: <http://18.195.221.39/>
screenshots:
 <https://github.com/quantum85/aws-demo/blob/main/Jenkins.JPG>
 <https://github.com/quantum85/aws-demo/blob/main/GitHubHooks.JPG>
 <https://github.com/quantum85/aws-demo/blob/main/AwsECR.JPG>

If you have any questions please let me know.
