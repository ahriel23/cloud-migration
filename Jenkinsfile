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
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Deploy to S3') {
            steps {
                script {
                    // https://s3.console.aws.amazon.com/s3/home?region=us-east-1
                    sh "aws s3 cp target/*.jar s3://${cloud-migr-455076341644}/"
                }
            }
        }

        stage('Deploy to DynamoDB') {
            steps {
                script {
                    // https://us-east-1.console.aws.amazon.com/dynamodbv2/home?region=us-east-1#dashboard
                    sh "aws dynamodb put-item --table-name ${my-db} --item '{\"key\": {\"S\": \"valeur\"}}' --region ${us-east-1}"
                }
            }
        }
    }

    

