#!/usr/bin/env bash

cat ./Pipfile

if [[ ${PIPENV_ACTIVE} != 1 ]]; then
    pipenv sync && pipenv shell
else
    pipenv --venv
fi
