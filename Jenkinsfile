pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SheralRichard/bootcamp-3'
            }
        }
        stage('Terraform Initialize') {
            steps {
                bat '''
                    terraform init
                '''
            }
        }
        stage('Terraform Validate') {
            steps {
                bat '''
                    terraform validate
                '''
            }
        }
        stage('Terraform Plan') {
            steps {
                bat '''
                    terraform plan -out=tfplan
                '''
            }
        }
        stage('Terraform Apply') {
            steps {
                bat '''
                    terraform apply -auto-approve tfplan
                '''
            }
        }
    }
}
