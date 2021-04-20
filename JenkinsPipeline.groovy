pipeline {
    agent any
    environment{
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')
    }
    stages{
        stage('Clone sources') {
        git url: 'https://github.com/vipin-k/jenkins-terraform-example.git'
        }
        stage('Plan'){
        steps{
            sh 'cd jenkins-terraform-example'
            sh 'terraform init -input=false'
            sh 'terraform plan -input=false -out tfplan'
            sh 'terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Apply'){
        steps{
            sh 'terraform apply -input=false tfplan'
            }
        }
    }
}