# vim:set ft=dockerfile:

# This file is a duplicate of:
# https://github.com/CircleCI-Public/cimg-shared/blob/master/variants/browsers.Dockerfile.template
# The reason this exists is that the Node.js image needed its own version of
# the browsers variant. The normal version is based on the node variant of that
# image. As this IS a Node image, there isn't a node variant.

FROM cimg/node:14.14.0

LABEL maintainer="CircleCI Community & Partner Engineering Team <community-partner@circleci.com>"

# Install Selenium
ENV SELENIUM_VER=3.141.59
RUN curl -sSL -o selenium-server-standalone-${SELENIUM_VER}.jar "https://selenium-release.storage.googleapis.com/${SELENIUM_VER%.*}/selenium-server-standalone-${SELENIUM_VER}.jar" && \
    sudo cp selenium-server-standalone-${SELENIUM_VER}.jar /usr/local/bin/selenium.jar && \
    rm selenium-server-standalone-${SELENIUM_VER}.jar

RUN sudo apt-get update && \
    # Firefox deps
    sudo apt-get install -y --no-install-recommends --no-upgrade \
		libdbus-glib-1-2 \
		libgtk-3-dev \
		libxt6 \
	&& \
    # Google Chrome deps
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
        # java for selenium
        openjdk-11-jre \
        xdg-utils \
	&& \
	sudo rm -rf /var/lib/apt/lists/*
