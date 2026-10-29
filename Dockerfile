 # Stage 1: Build stage
 FROM maven:3.10.0-eclipse-temurin-8 AS build 

 WORKDIR /app

 COPY . .

 RUN mvn install -DskipTests

  # Stage 2: Production stage

 FROM tomcat:9.0.123-jre8-temurin-noble 

 COPY --from=build /app/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

 