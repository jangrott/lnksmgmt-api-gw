FROM java:8

ADD build/libs/api-gw-*.jar apiGwApp.jar

RUN bash -c 'touch /apiGwApp.jar'

EXPOSE 8080

CMD ["java", "-jar", "/apiGwApp.jar"]