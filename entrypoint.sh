#!/usr/bin/env bash

git clone https://github.com/smallrye/smallrye-config

cd smallrye-config

mvn clean install -Dmaven.repo.local=${GITHUB_WORKSPACE}/.m2/repository
