pipeline {
    agent any

    environment {
        TF_IN_AUTOMATION = "true"
    }

    options {
        skipDefaultCheckout()  // Avoid duplicate checkouts
    }

    stages {
        stage('Git Checkout') {
            steps {
                checkout([$class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: 'https://github.com/SheralRichard/bootcamp-3']]
                ])
            }
        }

        stage('Terraform Initialize') {
            steps {
                bat '''
                    echo Initializing Terraform...
                    terraform init -input=false
                '''
            }
        }

        stage('Terraform Validate') {
            steps {
                bat '''
                    echo Validating Terraform configuration...
                    terraform validate
                '''
            }
        }

        stage('Terraform Plan') {
            steps {
                bat '''
                    echo Generating Terraform plan...
                    terraform plan -out=tfplan
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Approve Terraform Apply?'
                bat '''
                    echo Applying Terraform changes...
                    terraform apply -auto-approve tfplan
                '''
            }
        }
    }

    post {
        failure {
            echo 'Pipeline failed!'
        }
        success {
            echo 'Pipeline completed successfully.'
        }
    }
}
