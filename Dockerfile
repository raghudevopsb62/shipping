FROM          maven:eclipse-temurin
RUN           adduser --disabled-password  --home /app --gecos "" roboshop
USER          roboshop
WORKDIR       /app
COPY          src/ src/
COPY          pom.xml pom.xml
RUN           mvn clean package
RUN           mv target/shipping-1.0.jar shipping.jar
ENTRYPOINT    ["java", "-Xms3500m", "-Xmx3500m", "-jar", "shipping.jar"]
