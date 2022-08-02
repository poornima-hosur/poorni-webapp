pipeline {
    agent any
    stages {
        stage("git clone"){
            steps{
                git 'https://github.com/kajamal/maven-webapp.git' 
                  }
                          }
        stage("build code"){
            steps{
                sh "mvn clean install"
                  }
            
                           }
         
             }
    
}
