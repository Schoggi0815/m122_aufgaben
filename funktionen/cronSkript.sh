#!/bin/bash

# Syslog is by default not running on WSL 
# 
# service rsyslog status
#
# To start it use
# 
# sudo service rsyslog start
# 
# 

logger "Die Variable " $1 " ist passiert!"