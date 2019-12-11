FROM python:2

RUN pip install --no-cache-dir mkdocs
# Implicit requirement of mermaid plugin
RUN pip install --no-cache-dir bs4
RUN pip install --no-cache-dir mkdocs-mermaid-plugin

WORKDIR /workdir

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/mkdocs", "serve", "-a", "0.0.0.0:8000"]
