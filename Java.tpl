#!/bin/bash
yum update -y
wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
yum install -y apache-maven
yum install java-1.8.0-openjdk-devel.x86_64 -y