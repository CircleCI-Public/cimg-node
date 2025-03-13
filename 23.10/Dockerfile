# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM cimg/base:2024.02

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

ENV NODE_VERSION 23.10.0

RUN [[ $(uname -m) == "x86_64" ]] && ARCH="x64" || ARCH="arm64" && \
 	curl -L -o node.tar.xz "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${ARCH}.tar.xz" && \
	sudo tar -xJf node.tar.xz -C /usr/local --strip-components=1 && \
	rm node.tar.xz && \
	sudo ln -s /usr/local/bin/node /usr/local/bin/nodejs

ENV PATH /home/circleci/.yarn/bin:$PATH

ENV YARN_VERSION 1.22.22
RUN curl -L -o yarn.tar.gz "https://yarnpkg.com/downloads/${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz" && \
	sudo tar -xzf yarn.tar.gz -C /opt/ && \
	rm yarn.tar.gz && \
	sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarn /usr/local/bin/yarn && \
	sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarnpkg /usr/local/bin/yarnpkg

# Install an alternative, but growing in popularity Node.js package manager
RUN sudo npm install -g pnpm
