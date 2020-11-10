#!/bin/bash

if [[ -z "${GITHUB_WORKSPACE}" ]]; then
    git clone https://github.com/kinnala/scikit-fem.git
    TEST_DIR="scikit-fem"
else
    TEST_DIR="${GITHUB_WORKSPACE}"
fi
cd $TEST_DIR && flake8 skfem && mypy skfem && sphinx-build -W -a -b html docs docs/_build && sphinx-build -a -b doctest docs docs/_build && pytest
