#!/usr/bin/env bash
# {{ ansible_managed }}

# Ajout des binaires extension Docker dans le Path
export PATH=$PATH:{{ workstation_docker_binaries_directory }}
