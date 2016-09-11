#!/bin/bash
STATUS=$(systemctl status mysqld | grep running | grep -v not | wc -l);
if [ "$STATUS" -ne 1 ];
then
        echo $(date) "- MySQL not running\n";
        systemctl stop mysqld
        systemctl start mysqld
fi

