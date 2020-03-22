FROM openjdk:8-jre-slim

ADD apache-jena-fuseki-3.14.0.tar.gz /srv
RUN mkdir /srv/apache-jena-fuseki-3.14.0/run
COPY covid19_knowledge_graph.ttl /srv/
COPY shiro.ini /srv/apache-jena-fuseki-3.14.0/run/shiro.ini
WORKDIR /srv/apache-jena-fuseki-3.14.0



ENTRYPOINT [ "java", "-Xmx1200M", "-cp", "./fuseki-server.jar", "org.apache.jena.fuseki.cmd.FusekiCmd", "--port", "8182", "--file", "/srv/covid19_knowledge_graph.ttl", "/covid19-knowledge-graph" ]