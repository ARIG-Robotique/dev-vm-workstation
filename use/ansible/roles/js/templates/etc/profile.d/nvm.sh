#!/usr/bin/env bash
# {{ ansible_managed }}

export NVM_DIR="{{ workstation_software_root_directory }}/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install {{ workstation_tools_node_version }} &> /dev/null
nvm use {{ workstation_tools_node_version }} &> /dev/null