# Spring PetClinic Sample Application - https://github.com/sharona1971/spring-petclinic.git

## Understanding the Spring Petclinic application with a few diagrams
<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

## Running petclinic locally
Petclinic is a [Spring Boot](https://spring.io/guides/gs/spring-boot) application built using [Maven](https://spring.io/guides/gs/maven/) that was modified by Sharon Almog (sharona1971@gmail.com) to match a local environment with full automation of application deployment as a docker container.

The code is ready to be used as part of Jenkins pipeline job which will require:
1) Setting up Jenkins to GIT repo using https://github.com/sharona1971/spring-petclinic.git repository URL (SCM).
2) Setting Pipeline build branch as "*/main"
3) Setting Script path as "jenkinsfile"
4) Make sure that Docker Plugin is configured correctly on your sustem 
5) It is assumed that your system runs all in one (Jenkins + Docker engine) or else the jenkinsfile will need modification to reflect different agent.
6) When performing the build, it will automatically build the project Jar file and will build the required docker image and will deploy it to localhost:9090 (the reason for port 9090 redirection from 8080 is that Jenkins already run on same localhost:8080)
7) If you Jenkins build fails, make sure to read the job output to trace root cause of failure (missing docker engine, access to git repo etc.)

For any issues, please contact sharona1971@gmail.com 
 
