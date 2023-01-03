# eks version
FROM python:3.11.0-slim
RUN pip install poetry python-json-logger

COPY pyproject.toml poetry.lock ./
RUN poetry config virtualenvs.create false
RUN poetry install --no-root

RUN pip install whitenoise

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]