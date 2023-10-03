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
                 terraform init -reconfigure
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

    

