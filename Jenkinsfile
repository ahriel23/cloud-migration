pipeline {
    agent any
    
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
                sh 'terraform plan -target=aws_s3_bucket.example'
            }
        }
        stage( 'action') {
            steps {
                echo"terraform action is --> ${action}"
                sh ('terraform apply -target=aws_s3_bucket.example --auto-approve')
            }
        }
    }
}

    

