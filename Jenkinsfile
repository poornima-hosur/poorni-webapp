pipeline {
    agent any
    environment {
        PATH = "/opt/mavens/bin/:$PATH"
    }
    stages {
        stage("git clone"){
            steps{
                git branch: 'dev', url: 'https://github.com/kajamal/maven-webapp.git' 
            }
            
        }
        stage("build code"){
            steps{
                sh "mvn clean install"
            }
            
        }

     
              
        }
    
    
}


