FROM node:16.15.0
WORKDIR app
COPY . .
EXPOSE 443
EXPOSE 80
COPY ./package.json /app
COPY ./src /app
RUN npm install
RUN npm run build
ENV PORT 3000
EXPOSE 3000
ENTRYPOINT ["npm", "run","start"]



please remember the node version when you need please change 





FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/sivaram6267/mircro-srikanth-.git FROM maven:3.8.7-openjdk-18 as build
WORKDIR /app
COPY --from=0 /app/mircro-srikanth- /app
RUN mvn clean install -Dmaven.test.skip=true FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/onlinegrocerystore-0.0.1-SNAPSHOT.jar /app
CMD ["java -jar onlinegrocerystore-0.0.1-SNAPSHOT.jar"]



according file change points 

container  will exited port number give server 


FROM maven:3.8.7-sapmachine-17 as build
WORKDIR /app
COPY  . .
RUN mvn clean install -Dmaven.test.skip=true

FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build /app/target/omg-cloud-config-server-0.0.1-SNAPSHOT.jar /app
CMD ["java","-jar","omg-cloud-config-server-0.0.1-SNAPSHOT.jar"] 
