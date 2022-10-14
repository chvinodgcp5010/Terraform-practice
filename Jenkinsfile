pipeline {
  agent any
withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'), string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_SECRET_ACCESS_KEY')]) {
    // some block
}
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
