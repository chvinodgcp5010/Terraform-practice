pipeline {
  agent any
    environment {
      AWS_ACCESS_KEY_ID = "${params.AWS_ACCESS_KEY_ID}"
      AWS_SECRET_ACCESS_KEY = "${params.AWS_SECRET_ACCESS_KEY}"
  }
  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init"
      }
    }
    
    stage('Terraform Plan') {
      steps {
        sh "terraform plan"
    }
   }
  }
}
