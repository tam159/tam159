#!/bin/bash

sqlfluff format

sqlfluff fix -f
#sqlfluff fix -f

sqlfluff lint
