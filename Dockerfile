FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests
COPY  /target/my-app-1.0-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
