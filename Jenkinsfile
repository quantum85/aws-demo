pipeline {
    agent { label "aws_ec2" }
    stages {
        stage('Docker Build') {
            steps {
                sh'''/bin/bash 
                docker stop web-app && docker rm web-app
                docker build -t aws-demo .
                docker tag aws-demo:latest 780893349257.dkr.ecr.eu-central-1.amazonaws.com/aws-demo:latest
                ''' 
            }
        }
        stage('ECR Push') {
            steps {
                sh 'docker push 780893349257.dkr.ecr.eu-central-1.amazonaws.com/aws-demo:latest'
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker run -d --name web-app -p 80:80 aws-demo:latest'
               
            }
        }
    }
}
