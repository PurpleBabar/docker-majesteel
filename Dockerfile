FROM purplebabar/symfony:2-php-5.6

RUN set -x \
	&& apt-get update \
	&& apt-get install --no-install-recommends --no-install-suggests -y imagemagick
# PHP extensions
RUN set -ex \
	&& pecl install imagick-3.4.3 \
    && docker-php-ext-enable imagick
