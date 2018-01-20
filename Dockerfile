FROM openjdk:8


ADD build/libs/jalgoarena-problems-*.jar /jalgoarena-problems.jar
COPY ProblemsStore /ProblemsStore

ENV EUREKA_URL=http://eureka:5000/eureka
EXPOSE 5002

ENTRYPOINT java -Dserver.port=5002 -jar jalgoarena-problems.jar


