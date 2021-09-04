FROM python:3.9-slim-buster

# Flush Python logs
ENV PYTHONUNBUFFERED 1

# Create a working directory.
RUN mkdir -p /opt/monkey-bar
WORKDIR /opt/monkey-bar

# Copy the codebase into the image
COPY Pipfile .
COPY api ./api

# Install Python dependencies.
RUN pip install pipenv && \
   pipenv install --skip-lock

EXPOSE 80

# Finally, run the server
CMD ["pipenv", "run", "uvicorn", "api.server:app", "--host", "0.0.0.0", "--port", "80"]