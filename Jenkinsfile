//https://medium.com/@pb8226/running-terraform-with-jenkins-pipelines-f29a8cb861d4
  
pipeline {
  agent any
  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init -no-color"
      }
    }
    
    stage('Terraform Plan') {
      steps {
        sh "terraform plan -out=tfplan -no-color"
    }
   }
  }
}
