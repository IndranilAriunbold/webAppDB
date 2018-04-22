FROM java:8
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} SHORTYGEORGE.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/SHORTYGEORGE.jar"]