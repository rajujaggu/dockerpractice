FROM maven:3.8.6-amazoncorretto-11 as build
RUN git clone https://github.com/rajujaggu/openmrs-core.git && \
    cd openmrs-core && \
    mvn package
RUN cd webapp
CMD ["mvn","jetty:run"]