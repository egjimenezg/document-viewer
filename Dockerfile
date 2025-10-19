FROM python:3.13-slim

WORKDIR /app

# Install poetry
RUN pip install poetry

# Copy pyproject.toml and poetry.lock
COPY doc-viewer-back/pyproject.toml doc-viewer-back/poetry.lock ./

RUN poetry install --no-root

COPY doc-viewer-back/ .

ENV PYTHONPATH=/app/src
