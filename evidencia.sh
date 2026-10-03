#!/bin/bash

NOMBRE=$1
shift

./mvnw "$@" > "evidencia/$NOMBRE.txt" 2>&1

cat "evidencia/$NOMBRE.txt"
