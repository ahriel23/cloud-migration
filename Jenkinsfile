pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('')
        AWS_SECRET_ACCESS_KEY = credentials('')
        AWS_REGION = 'us-east-1' 
        S3_BUCKET_NAME = 'cloud-migr-455076341644'
        DYNAMODB_TABLE_NAME = 'my-db'
    }

    stages {
        stage('Checkout') {
            steps {
                // https://github.com/ahriel23/cloud-migration/new/main
                checkout scm
            }
        }

          stage('Code Build') {
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

    

