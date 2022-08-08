FROM openjdk
COPY target/demos.war /
EXPOSE 8081
ENTRYPOINT ["java","-war","/demos.war"]
