#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s ${BASEDIR}/bashrc ~/.bashrc
ln -s ${BASEDIR}/bash_profile ~/.bash_profile
ln -s ${BASEDIR}/editorconfig ~/.editorconfig
ln -s ${BASEDIR}/inputrc ~/.inputrc