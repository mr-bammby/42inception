#!/usr/bin/env bash

printf "\ny\n$DB_ROOT_PASS\n$DB_ROOT_PASS\ny\ny\ny\ny\n" | mysql_secure_installation
