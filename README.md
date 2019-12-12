# BUwiki

# Serve as HTML

## One-time setup

```
pip3 install mkdocs
pip3 install python-markdown-math
pip3 install bs4
(cd mkdocs-referencecash-plugin; sudo python3 setup.py install)
```

## Run
```
mkdocs serve
```

# Docker

```
docker build -t buwiki .
```

## Run
```
./start-docker.sh
```

# LaTeX syntax
[See Julia docs](https://juliadocs.github.io/Documenter.jl/v0.1/man/latex/)
