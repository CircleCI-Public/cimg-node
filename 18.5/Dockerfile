# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

FROM cimg/base:2022.06

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV NODE_VERSION 18.5.0
ENV NVM_DIR /home/circleci/.nvm

# Next two lines should be moved to cimg/base
ENV BASH_ENV /home/circleci/.circlerc
RUN touch /home/circleci/.circlerc && \
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash && \
	echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.circlerc && \
	source ~/.circlerc && nvm install $NODE_VERSION && \
	echo -e ". /home/circleci/.circlerc\n$( cat ~/.bashrc )" > ~/.bashrc && \
	command -v nvm

ENV YARN_VERSION 1.22.18
RUN curl -L -o yarn.tar.gz "https://yarnpkg.com/downloads/${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz" && \
	sudo tar -xzf yarn.tar.gz -C /opt/ && \
	rm yarn.tar.gz && \
	sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarn /usr/local/bin/yarn && \
	sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarnpkg /usr/local/bin/yarnpkg
