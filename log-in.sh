#!/usr/bin/env bash

command -v pipenv >/dev/null 2>&1 ||
{
    echo 'pipenv is not found: $ pip3 install pipenv'
    exit 1
}

cat ./Pipfile

if [[ ${PIPENV_ACTIVE} != 1 ]]; then
    pipenv sync && pipenv shell
else
    pipenv --venv
fi
