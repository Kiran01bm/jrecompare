FROM openjdk:11-jdk-slim 

COPY gs-rest-service-0.1.0.jar . 

CMD ["java", "-XX:+IgnoreUnrecognizedVMOptions", "-XX:+UseContainerSupport", "-XX:+IdleTuningCompactOnIdle", "-XX:+IdleTuningGcOnIdle", "-Xtune:virtualized", "-jar", "gs-rest-service-0.1.0.jar"]
