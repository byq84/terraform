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
                sh 'sudo rm -r /home/ec2-user/terraform-ec2;sudo git clone https://github.com/byq84/terraform-ec2.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /home/ec2-user/terraform init /home/ec2-user/terraform-ec2'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'sudo /home/ec2-user/terraform plan /home/ec2-user/terraform-ec2'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'sudo /home/ec2-user/terraform apply -auto-approve /home/ec2-user/terraform-ec2'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!! Bye Bye"'
            }
        }
        
    }
}
