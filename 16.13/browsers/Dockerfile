# vim:set ft=dockerfile:

# This file is a duplicate of:
# https://github.com/CircleCI-Public/cimg-shared/blob/master/variants/browsers.Dockerfile.template
# The reason this exists is that the Node.js image needed its own version of
# the browsers variant. The normal version is based on the node variant of that
# image. As this IS a Node image, there isn't a node variant.

FROM cimg/node:16.13.2

LABEL maintainer="CircleCI Community & Partner Engineering Team <community-partner@circleci.com>"

# Install Selenium
ENV SELENIUM_VER=3.141.59
RUN curl -sSL -o selenium-server-standalone-${SELENIUM_VER}.jar "https://selenium-release.storage.googleapis.com/${SELENIUM_VER%.*}/selenium-server-standalone-${SELENIUM_VER}.jar" && \
    sudo cp selenium-server-standalone-${SELENIUM_VER}.jar /usr/local/bin/selenium.jar && \
    rm selenium-server-standalone-${SELENIUM_VER}.jar

RUN sudo apt-get update && \

    # Install Java only if it's not already available
    # Java is installed for Selenium
    if ! command -v java > /dev/null; then \
        echo "Java not found in parent image, installing..." && \
        sudo apt-get install -y --no-install-recommends --no-upgrade openjdk-11-jre; \
    fi && \

    # Firefox deps
    sudo apt-get install -y --no-install-recommends --no-upgrade \
		libdbus-glib-1-2 \
		libgtk-3-dev \
		libxt6 \
	&& \
    # Google Chrome deps
	# Some of these packages should be pulled into their own section
    sudo apt-get install -y --no-install-recommends --no-upgrade \
        fonts-liberation \
        libappindicator3-1 \
        libasound2 \
        libatk-bridge2.0-0 \
        libatspi2.0-0 \
        libcairo2 \
        libcups2 \
        libgbm1 \
        libgdk-pixbuf2.0-0 \
        libgtk-3-0 \
        libpango-1.0-0 \
        libpangocairo-1.0-0 \
        libxcursor1 \
		libxss1 \
        xdg-utils \
		xvfb \
	&& \
	sudo rm -rf /var/lib/apt/lists/*

# Below is setup to allow xvfb to start when the container starts up.
# The label in particular allows this image to override what CircleCI does
# when booting the image.
LABEL com.circleci.preserve-entrypoint=true
ENV DISPLAY=":99"
#RUN	printf '#!/bin/sh\nXvfb :99 -screen 0 1280x1024x24 &\nexec "$@"\n' > /tmp/entrypoint && \
#	chmod +x /tmp/entrypoint && \
#	sudo mv /tmp/entrypoint /docker-entrypoint.sh
RUN	printf '#!/bin/sh\nXvfb :99 -screen 0 1280x1024x24 &\nexec "$@"\n' | sudo tee /docker-entrypoint.sh && \
	sudo chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/sh"]
