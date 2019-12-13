FROM oracle/graalvm-ce:19.3.0-java11

COPY gs-rest-service-0.1.0.jar . 

CMD ["java", "-Dgraal.CompilerConfiguration=community", "-XX:+IgnoreUnrecognizedVMOptions", "-XX:+UseContainerSupport", "-XX:+IdleTuningCompactOnIdle", "-XX:+IdleTuningGcOnIdle", "-Xtune:virtualized", "-jar", "gs-rest-service-0.1.0.jar"]
