FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD build/libs/springboot_api-boot.jar springboot_api-boot.jar
ENV JAVA_OPTS=""
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egdfile:/dev/./urandom -jar /springboot_api-boot.jar"]