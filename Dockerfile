FROM maven:3.8.6-amazoncorretto-11 as build
RUN sudo apt install git -y  && \
    sudo apt install apache2 -y
RUN git clone https://github.com/rajujaggu/openmrs-core.git && \
    cd openmrs-core && \
    mvn package
RUN cd webapp
CMD ["mvn","jetty:run"]