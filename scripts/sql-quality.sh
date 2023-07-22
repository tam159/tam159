#!/bin/bash

file_name=$1

sqlfluff format $file_name

sqlfluff fix -f $file_name
#sqlfluff fix -f $file_name

sqlfluff lint $file_name
