FROM centos:centos6 

MAINTAINER Theo Lew <theo@opsmen.nl

# Setup Spacewalk client node example

# Add Repos and install Spacewalk client tools 

RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm && rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm && yum update -y

# Install the Spacewalk software client registry software 

RUN yum install rhn-client-tools rhn-check rhn-setup rhnsd m2crypto yum-rhn-plugin

# Update software

RUN yum update -y 




