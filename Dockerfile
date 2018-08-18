FROM purplebabar/symfony:2-php-5.6

# PHP extensions
RUN set -ex \
	&& pecl install imagick \
	&& docker-php-ext-enable apcu \
