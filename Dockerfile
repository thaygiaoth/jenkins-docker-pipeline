FROM openjdk:17-oraclelinux8
COPY src/*.java /usr/src/
WORKDIR /usr/src
RUN javac -d . *.java
RUN echo Main-Class: Rectangulator > MANIFEST.MF
RUN jar -cvmf MANIFEST.MF rectangle.jar *.class
