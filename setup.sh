#!/bin/bash

NEW_PATH="$PATH":$(pwd)/src

[[ -e ~/.bashrc ]] && echo "$NEW_PATH" >> ~/.bashrc
