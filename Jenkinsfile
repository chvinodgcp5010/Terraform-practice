pipeline {
  agent any
  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init -input=false"
      }
    }
    
    stage('Terraform Plan') {
      steps {
        sh "terraform plan"
    }
   }
  }
}
