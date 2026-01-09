FROM eclipse-temurin:21-jdk
COPY . /var/www/java
WORKDIR /var/www/java
RUN javac SimpleHTTPServer.java
CMD ["java", "SimpleHTTPServer"]
