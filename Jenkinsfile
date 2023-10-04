pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
        AWS_SECRET_KEY = credentials ('aws_secret_key')
        AWS_REGION = "us-east-1"
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

          stage('terraform init') {
            steps {
                 sh'terraform init '
            }
        }
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage( 'action') {
            steps {
                echo"terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve')
            }
        }
    }
}

    

