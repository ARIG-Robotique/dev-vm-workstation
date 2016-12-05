#!/usr/bin/env bash
# {{ ansible_managed }}

export MAVEN_HOME={{ workstation_software_root_directory }}/maven
export MAVEN_OPTS="-Xms512m -Xmx1024m"
export PATH=$PATH:$MAVEN_HOME/bin