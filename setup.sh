#!/bin/bash

NEW_PATH="$PATH":$(pwd)/src

[[ -e ~/.bashrc ]] && echo PATH="$NEW_PATH" >> ~/.bashrc
