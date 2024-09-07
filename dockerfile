FROM maven:3.8.5-openjdk-17
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN mvn clean package

CMD ["java", "-jar", "target/CVDS-TEST-1.0-SNAPSHOT.jar"]