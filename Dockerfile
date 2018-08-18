FROM purplebabar/symfony:2-php-5.6

# PHP extensions
RUN set -ex \
	&& pecl install imagick-3.4.3 \
	&& docker-php-ext-enable imagick
