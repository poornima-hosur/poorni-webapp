FROM openjdk
COPY target/*.war /
EXPOSE 8081
ENTRYPOINT ["java","-war","/webpage-lastest.war"]
