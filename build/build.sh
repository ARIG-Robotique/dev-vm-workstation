#!/bin/bash
# Description : Script de build de la VM de dev ARIG
# Autheur : Gregory DEPUILLE

PACKER_VERSION="0.12.0"
PACKER_CHECKSUM="ce6362d527ba697e40b8c90a98d2034b7749e2357fa238b08536aed44f037073"
PACKER_FILE="packer_${PACKER_VERSION}_linux_amd64.zip"

if [ ! -f "${PACKER_FILE}" ] ; then
  wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/${PACKER_FILE} -O ${PACKER_FILE}
  SUM=`sha256sum ${PACKER_FILE} | cut -d ' ' -f 1`
  if [ "${PACKER_CHECKSUM}" != "${SUM}" ] ; then
      rm -f ${PACKER_FILE}
      echo "[ERROR] Sum local ${SUM} != ${PACKER_CHECKSUM} distante"
      exit 2
  fi
fi
if [ ! -f "packer" ] ; then
  unzip ${PACKER_FILE}
fi

./packer validate fedora-24-x86_64.json && ./packer build fedora-24-x86_64.json
