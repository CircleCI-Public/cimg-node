# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM cimg/base:2025.10

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

ENV NODE_VERSION=25.7.0

RUN [[ $(uname -m) == "x86_64" ]] && ARCH="x64" || ARCH="arm64" && \
 	curl -L -o node.tar.xz "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${ARCH}.tar.xz" && \
	sudo tar -xJf node.tar.xz -C /usr/local --strip-components=1 && \
	rm node.tar.xz && \
	sudo ln -s /usr/local/bin/node /usr/local/bin/nodejs

ENV PATH=/home/circleci/.yarn/bin:$PATH

RUN sudo npm install -g yarn

# Install an alternative, but growing in popularity Node.js package manager
RUN sudo npm install -g pnpm
