#!/usr/bin/env bash

IFS='/' read -ra ORG_REPO <<< "$1"
IFS='@' read -ra REPO_BRANCH <<< "${ORG_REPO[1]}"

ORG=${ORG_REPO[0]}
REPO=${REPO_BRANCH[0]}
BRANCH=${REPO_BRANCH[1]}

echo ${ORG}
echo ${REPO}
echo ${BRANCH}

if [[ -z ${BRANCH} ]]; then
    git clone https://github.com/${ORG}/${REPO}
else
    git clone --branch ${BRANCH} https://github.com/${ORG}/${REPO}
fi

cd ${REPO}

mvn clean install -Dmaven.repo.local=${HOME}/.m2/repository
