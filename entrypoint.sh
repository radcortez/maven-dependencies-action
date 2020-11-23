#!/usr/bin/env bash

echo 'input' $1

IFS=' ' read -ra REPOS <<< "$1"

for i in "${REPOS[@]}"
do
    echo 'i' ${i}
    IFS='/' read -ra ORG_REPO <<< "$i"
    IFS='@' read -ra REPO_BRANCH <<< "${ORG_REPO[1]}"

    ORG=${ORG_REPO[0]}
    REPO=${REPO_BRANCH[0]}
    BRANCH=${REPO_BRANCH[1]}

    echo 'organization' ${ORG}
    echo 'repository' ${REPO}
    echo 'branch' ${BRANCH}
done

#if [[ -z ${BRANCH} ]]; then
#    git clone https://github.com/${ORG}/${REPO}
#else
#    git clone --branch ${BRANCH} https://github.com/${ORG}/${REPO}
#fi
#
#cd ${REPO}
#
#mvn clean install -Dmaven.repo.local=${HOME}/.m2/repository
