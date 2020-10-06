#!/bin/sh -l

git clone https://github.com/kinnala/scikit-fem.git
cd scikit-fem && pytest -k test_examples
