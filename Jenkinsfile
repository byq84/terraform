pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/byq84/terraform.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /home/ec2-user/terraform init /home/ec2-user'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'sudo /home/ec2-user/terraform plan /home/ec2-user'
            }
        
        stage('terraform deploy') {
            steps {
                sh 'sudo /home/ec2-user/terraform deploy /home/ec2-user'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
