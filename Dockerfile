FROM maven:3.8.6 as build
RUN apt install apache2 -y
RUN git clone https://github.com/rajujaggu/openmrs-core.git && \
    cd openmrs-core && \
    mvn clean package
RUN cd webapp
CMD ["mvn","jetty:run"]