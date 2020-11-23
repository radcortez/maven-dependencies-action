#!/usr/bin/env bash

git clone https://github.com/smallrye/smallrye-config

cd smallrye-config

mvn clean install -Dmaven.test.skip=true

cp -rf ~/.m2/repository/ /github/workspace/.m2/repository/
