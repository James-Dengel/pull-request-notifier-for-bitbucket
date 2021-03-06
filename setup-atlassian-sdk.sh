#!/bin/bash
wget https://marketplace.atlassian.com/download/plugins/atlassian-plugin-sdk-tgz
mkdir opt
tar -xvzf *plugin-sdk* -C opt
mv opt/*plugin-sdk* opt/atlassian-plugin-sdk
chmod a+x opt/atlassian-plugin-sdk/bin/*
chmod a+x opt/atlassian-plugin-sdk/apache-maven-*/bin/*
echo "export PATH=opt/atlassian-plugin-sdk/bin:opt/atlassian-plugin-sdk/apache-maven-*/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
