FROM openjdk:latest
COPY --from=build repo/target/spring-petclinic-2.6.0-SNAPSHOT.jar /usr/local/spring-petclinic-2.6.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/usr/local/spring-petclinic-2.6.0-SNAPSHOT.jar"]
CMD java -jar /usr/local/spring-petclinic-2.6.0-SNAPSHOT.jar