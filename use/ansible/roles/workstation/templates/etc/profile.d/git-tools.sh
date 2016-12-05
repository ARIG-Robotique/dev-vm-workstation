#!/usr/bin/env bash
# {{ ansible_managed }}

# GWS
GWS_HOME={{ workstation_software_root_directory }}/git-workspace/src

# MU Repo
MU_HOME={{ workstation_software_root_directory }}/mu-repo

export PATH=$PATH:$GWS_HOME:$MU_HOME
