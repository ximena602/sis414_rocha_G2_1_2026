# fase compilacion

FROM eclipse-temurin:17-jdk-alpine AS build
WORKDIR /app
COPY .  .

#da permisos de ejecucion
RUN chmod +x ./gradlew
RUN ./gradlew clean bootJar -x test

# fase de ejecucion
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=build /app/build/libs/app.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]