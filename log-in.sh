#!/usr/bin/env bash

cat ./Pipfile

if [[ ${PIPENV_ACTIVE} != 1 ]]; then
    pipenv install && pipenv shell
else
    pipenv --venv
fi
