FROM python:3.12.2-slim-bullseye as base
RUN apt-get update && apt-get -y install make
RUN pip install poetry==1.7.1
WORKDIR app/
COPY poetry.lock pyproject.toml README.md poetry.toml ./
RUN poetry install --no-interaction --no-ansi --without development,test
COPY src src/
RUN poetry install --only-root

FROM base as production
CMD poetry run python -m sample_project
