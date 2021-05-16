FROM webdevops/php-nginx-dev:8.0

ENV APP_PATH=/app

WORKDIR ${APP_PATH}

ENV WEB_DOCUMENT_ROOT=${APP_PATH}/public \
    WEB_DOCUMENT_INDEX=index.php \
    PHP_MEMORY_LIMIT=2048M

# See https://www.php.net/manual/en/ini.core.php#ini.realpath-cache-ttl
# I/O on filesystem is very slow in Windows / Mac, so we increase this value
ENV php.realpath_cache_ttl=7200

RUN apt-get update && apt-get install -y default-mysql-client curl less vim

COPY install.sh install.sh

RUN chmod u+x install.sh && ./install.sh
