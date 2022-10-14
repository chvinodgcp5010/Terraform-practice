pipeline {
  agent any
  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init"
      }
    }
    
    stage('Terraform Plan') {
      steps {
        withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_SECRET_ACCESS_KEY')]) {
        // some block
     }
        sh "terraform plan"
    }
   }
  }
}
