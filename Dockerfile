FROM python:3

WORKDIR /workdir
COPY mkdocs-referencecash-plugin /workdir/mkdocs-referencecash-plugin
COPY custom_theme /workdir/custom_theme

RUN pip install --no-cache-dir mkdocs
# Implicit requirement of referencecash plugin
RUN pip install --no-cache-dir bs4
RUN pip install python-markdown-math
RUN (cd mkdocs-referencecash-plugin; python3 setup.py install)

WORKDIR /workdir

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/mkdocs", "serve", "-a", "0.0.0.0:8000"]
