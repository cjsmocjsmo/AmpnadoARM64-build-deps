FROM debian:bullseye-slim

RUN \
	apt-get update && \
	apt-get dist-upgrade -y && \
	apt-get autoclean -y && \
	apt-get autoremove -y && \
	apt-get install --no-install-recommends -y \
		build-essential \
		zlib1g-dev \
		zlib1g \
		libjpeg-dev \
		python3-dev \
        python3-setuptools \
		python3-pil \
		python3-pymongo \
		python3-tornado \
		python3-mutagen

CMD [ "/bin/sh" ]
