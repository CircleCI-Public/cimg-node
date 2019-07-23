# `cimg/node` [![CircleCI Build Status](https://circleci.com/gh/CircleCI-Public/cimg-node.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/CircleCI-Public/cimg-node) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/CircleCI-Public/cimg-node/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/images)

Prototype CircleCI images for Node, extending CircleCI's [prototype `cimg/base` image](https://github.com/CircleCI-Public/cimg-base).

## Purpose

Stub text.

## Variants

Currently, there are no variants of this image.

To create the functionality of a `-browsers` variant, use [CircleCI's `browser-tools` orb](http://github.com/circleci-public/browser-tools-orb/) to install browsers at runtime.

## Tags

### `<node-version>-<year>.<month>`
Mostly immutable (except in the case of CVEs or severe bugs) monthly release tags for this image and its Node variant. Any new or removed tools from the base image in the last month will be reflected in this image release. For example, the `10.16.0-2019.04` tag would include any changes to this repo/image that occurred in March 2019. Monthly releases are built on the 3rd of every month.

### `<node-version>-stable`
Mutable tags representing the most recent monthly release of this image and its Node variant. For example, if today's date was April 15th, 2019, then the `10.16.0-stable` tag would be aliases for the `10.16.0-2019.04` tag.

### `<node-version>-edge`
Mutable tags representing the builds of this image and its Node variant following the most recent successful commit to this repository's `master` branch.

### `latest`
Mutable tag that represents the latest non-Node-variant, vanilla `cimg/node` image of any version, functionally duplicating whichever is the most recent Rust version pushed to either the `edge` or `stable` tags. Anyone calling the `cimg/node` image without specifying a tag will get this version of the image.

## Resources

Stub text.

## Development

Working on CircleCI Docker images.

### Adding new Node versions
To add a new version of Rust, add it to the [`versions` array in the `manifests` file](https://github.com/CircleCI-Public/cimg-node/blob/master/manifest#L5), as well as to the [`node-version` pipeline parameter `enum` at the top of the `config.yml` file](https://github.com/CircleCI-Public/cimg-node/blob/master/.circleci/config.yml#L31).

### Commits to non-master branches
Upon successful commits to non-master branches of this repository, Node versions of this image will be pushed to `ccitest/node` for any requisite post-deployment testing. Tags there will represent the branch and commit hash that triggered them. For example, a successful commit to a branch of this repository called `dev` would result in the creation of the following image/tag: `ccitest/node:<node-version>-dev-${CIRCLE_SHA1:0:7}"`, where `${CIRCLE_SHA1:0:7}"` represents the first six characters of that particular commit hash.

### Patching bugs and vulnerabilities
Monthly release tags can be manually re-published to patch vulnerabilities or severe bugs via a pushing a `git` tag that contains the string `monthly`. This tag will trigger a workflow that will rebuild all current `<node-version>-<year>.<month>` tags, as well as the `<node-version>-stable` and `latest` alias tags.

### Contributing
We welcome [issues](https://github.com/CircleCI-Public/cimg-node/issues) to and [pull requests](https://github.com/CircleCI-Public/cimg-node/pulls) against this repository!

This image is maintained by the Community & Partner Engineering Team.
