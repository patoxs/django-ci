# eks version
FROM python:3.11.0-slim

RUN poetry config virtualenvs.create false
RUN poetry install --no-root

RUN pip install whitenoise

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]