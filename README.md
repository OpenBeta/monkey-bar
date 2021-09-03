# monkey-bar

## Setup local development environment

Requirement: Python 3

```
# Install 'pipenv', the dependency management tool
pip install pipenv

# Install project dependencies
pipenv install --skip-lock

# Start the app
pipenv run uvicorn api.server:app

# Test the API
curl http://127.0.0.1:8000

# Output: {"message":"Hello World"}
```

## Docker

A Docker image is also available.

```
docker run -p 80:8000 registry.gitlab.com/openbeta/monkey-bar/monkey-bar:latest

# Test the API
curl http://127.0.0.1:8000

# Output: {"message":"Hello World"}

```