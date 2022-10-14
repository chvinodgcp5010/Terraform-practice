//https://medium.com/@pb8226/running-terraform-with-jenkins-pipelines-f29a8cb861d4
  
pipeline {
  agent any
  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init -no-color"
        //https://stackoverflow.com/questions/71201991/terraform-weird-patterns-in-the-log-32m-0m #terraform showing weird pattern like below
        // [32m+[0m [0m[1m[0mami[0m[0m                                  = "ami-026b57f3c383c2eec"
      }
    }
    
    stage('Terraform Plan') {
      steps {
        sh "terraform plan -out=tfplan -no-color"
    }
   }

    stage('Terraform Apply') {
      steps {
        sh "terraform apply -no-color"
    }
   }
  }
}
