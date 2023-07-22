#!/bin/bash

file_name=$1

nbqa black $file_name
nbqa isort $file_name
nbqa mypy $file_name
nbqa flake8 $file_name
nbqa pydocstyle $file_name
