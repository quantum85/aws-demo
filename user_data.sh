#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install -y docker
sudo yum install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker
sudo -i
su - ec2-user
mkdir /var/jenkins_home
docker run -d --name jenkins-demo -p 8080:8080 -p 50000:50000 -v /var/jenkins_home jenkins/jenkins
docker exec  jenkins-demo cat /var/jenkins_home/secrets/initialAdminPassword > ${HOME}/jenkinspass
sudo yum install java-1.8.0-openjdk.x86_64 -y
sudo yum install git -y
