pipeline{
    agent any
    tools {
        terraform 'terraform'
    }
    stages{
        stage('checkout from GIT'){
            steps{
                git branch: 'main', credentialsId: 'testpipelne', url: 'https://github.com/it-nuggets/provision-Terraform-using-jenkins-aws.git'
            }
        }
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply'){
            steps{
                sh 'terraform apply'
            }
        }
    }
}