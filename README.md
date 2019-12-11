# BUwiki

# Serve as HTML

## One-time setup

We need Python2 because the mermaid has not pushed an update for python3 compatibility.
They have fixed it though in their repo.

```
pip install mkdocs
pip install mkdocs-mermaid-plugin
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
