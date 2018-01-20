FROM openjdk:8

WORKDIR /opt/jalgoarena-problems
ADD build/libs/jalgoarena-problems-*.jar /opt/jalgoarena-problems

ENV EUREKA_URL=http://eureka:5000/eureka
EXPOSE 5002

CMD java -Dserver.port=5002 -jar /opt/jalgoarena-problems/jalgoarena-problems-*.jar