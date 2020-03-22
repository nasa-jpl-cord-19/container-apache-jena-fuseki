# container-apache-jena-fuseki

## Building

You'll need to supply your own copy of `apache-jena-fuseki-3.14.0.tar.gz` and `covid19_knowledge_graph.ttl` as they were to big to include in this repo, plus they really shouldn't be in an SCM anyway.

After you have those two dependencies here.

```bash
docker build --rm --tag apache-jena-fuseki .
```

For now given the current state of upstream dependencies used to create `covid19_knowledge_graph.ttl` I'm just dumping it in the container. I'll be removing it from the container after I build the pipeline to generate it.

## Running (locally)

```bash
docker run --user "31002:31002" --cap-drop=all --rm  -it -p 8182:8182 apache-jena-fuseki
```
