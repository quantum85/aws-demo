pipeline {
    agent { label "aws_ec2" }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
            }
        }
    }
}