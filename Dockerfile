FROM ivlev1998/base-server-php:8.5.5

RUN apk --no-cache add $PHPIZE_DEPS && \
    pecl install inotify && \
    docker-php-ext-enable inotify && \
    apk del $PHPIZE_DEPS
