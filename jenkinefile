pipeline {
    agent any
    environment {
        PATH = "/opt/mavens/bin/:$PATH"
    }
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
          stage("deploy"){
            steps{
                sshagent(['deploy_user']) {
                  sh "scp -o StrictHostKeyChecking=no target/demo.war ubuntu@34.233.134.43:/home/ubuntu/apache-tomcat-8.5.79/webapps"
                }
                
            }
              
        }
    }
    
}
