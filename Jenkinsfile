pipeline {
    agent any
    stages {
        stage("git clone"){
            steps{
                git 'https://github.com/kajendran1/maven-webapp.git' 
                  }
                          }
        stage("build code"){
            steps{
                sh "mvn clean install"
                  }
            
                           }
         stage('SonarQube analysis') {
                steps{
                    withSonarQubeEnv('sonarqube') { 
                    sh "mvn clean verify sonar:sonar \
  -Dsonar.projectKey=sonar1 \
  -Dsonar.host.url=http://3.110.79.16:9000 \
  -Dsonar.login=sqp_3babba5fbb265910d20b6be143f9a16e299ed435"
                                                   }
                     }    
                                      }
         
             }
    
}
