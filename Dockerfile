FROM openjdk:8 as final
MAINTEINER petclinic <petclinic@gmail.com>
LABEL owner="petclinic"
COPY --from=build repo/target/spring-petclinic-2.6.0-SNAPSHOT.jar /usr/local/spring-petclinic-2.6.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/usr/local/spring-petclinic-2.6.0-SNAPSHOT.jar"]