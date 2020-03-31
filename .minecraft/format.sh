#!/bin/bash

# Formats the file to make seeing percentages easy

sed 's/minecraft://g' $1 | sed 's/[a-zA-Z]+:[[:digit:]]'
