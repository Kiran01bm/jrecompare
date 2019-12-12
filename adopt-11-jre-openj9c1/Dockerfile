FROM adoptopenjdk:11-jre-openj9

COPY gs-rest-service-0.1.0.jar . 

CMD ["java", "-Xshareclasses:cacheDir=/cache" ,"-XX:+IgnoreUnrecognizedVMOptions", "-XX:+UseContainerSupport", "-XX:+IdleTuningCompactOnIdle", "-XX:+IdleTuningGcOnIdle", "-Xtune:virtualized", "-jar", "gs-rest-service-0.1.0.jar"]
