//https://medium.com/@pb8226/running-terraform-with-jenkins-pipelines-f29a8cb861d4
//https://gist.github.com/fortunecookiezen/b3bc3214a07a14529608857d078b32dd
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
        //sh "terraform plan -out=tfplan -no-color"
        sh label: '', script: 'terraform plan'
    }
   }

    stage('Terraform Apply') {
      steps {
        sh "terraform destroy -no-color -auto-approve"
    }
   }
  }
}
