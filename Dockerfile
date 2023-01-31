FROM openjdk:jre

ADD target/webapp-thorntail.jar /webapp.jar

ENV GREETING_SERVICE_SCHEME=http
ENV GREETING_SERVICE_HOST=greeting.prod.microservices.local
ENV GREETING_SERVICE_PORT=8081
ENV GREETING_SERVICE_PATH=/resources/greeting
ENV NAME_SERVICE_SCHEME=http
ENV NAME_SERVICE_HOST=name.prod.microservices.local
ENV NAME_SERVICE_PORT=8082
ENV NAME_SERVICE_PATH=/resources/names
CMD java -jar /webapp.jar

EXPOSE 8080
