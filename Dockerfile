FROM python:2.7-alpine3.8

ENV CQLVERSION="5.0.4" \
    CQLSH_HOST="cassandra" \
    CQLSH_PORT="9042" \
    CQLSH_USERNAME="cassandra" \
    CQLSH_PASSWORD="cassandra"

COPY ["entrypoint.sh", "/usr/local/bin"]

RUN pip install -Ivq cqlsh==5.0.4 \
    && apk add --no-cache bash \
    && echo 'alias cqlsh="cqlsh --cqlversion ${CQLVERSION} $@"' >> /.bashrc \
    && mkdir /.cassandra \
    && chmod 755 /usr/local/bin/entrypoint.sh

USER 1001

CMD ["entrypoint.sh"]
