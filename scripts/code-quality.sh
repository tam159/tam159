#!/bin/bash

file_name=$1

black $file_name
ruff check --fix $file_name
mypy $file_name

#isort $file_name
#flake8 $file_name
#pylint $file_name
#pydocstyle $file_name
