# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

FROM cimg/base:2022.01

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV NODE_VERSION 17.9.0
ENV NVM_DIR /home/circleci/.nvm
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:/home/circleci/.yarn/bin:$PATH

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash && \
	echo '\. "$NVM_DIR/nvm.sh" --no-use' >> ~/.bashrc

ENV YARN_VERSION 1.22.17

RUN curl -L -o yarn.tar.gz "https://yarnpkg.com/downloads/${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz" && \
	sudo tar -xzf yarn.tar.gz -C /opt/ && \
	rm yarn.tar.gz && \
	sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarn /usr/local/bin/yarn && \
	sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarnpkg /usr/local/bin/yarnpkg
