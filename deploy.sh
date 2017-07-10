#!/bin/bash

INSTALL_DIR="/opt/app-bamboo/custom_deploy/install_dir"
WORK_DIR="/tmp/target"
POM_VERSION=$(cat $WORK_DIR/app-java-bamboo-version.properties)
PACKAGE_PATH="${WORK_DIR}/app-java-bamboo-$POM_VERSION-dist.zip"

mkdir -p ${INSTALL_DIR}

#supervisorctl stop app-bamboo-custom-deploy

unzip -q -o ${PACKAGE_PATH} -d ${INSTALL_DIR}

rm -f ${INSTALL_DIR}/current
ln -s ${INSTALL_DIR}/app-java-bamboo-${POM_VERSION} ${INSTALL_DIR}/current

#supervisorctl start app-bamboo-custom-deploy
