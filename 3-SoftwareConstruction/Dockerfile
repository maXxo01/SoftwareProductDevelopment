FROM postgres

LABEL maintainer="Max Steblynskyi"
LABEL description="PostgreSQL container for Laboratory Work 6"

ENV POSTGRES_PASSWORD=1234
COPY db_init.sql /docker-entrypoint-initdb.d/
