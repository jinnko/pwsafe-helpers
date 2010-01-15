#!/bin/bash

password=`security -q find-generic-password -gl pwsafe-local 2>&1 | grep password | cut -d'"' -f2`

~/bin/pwlist.expect "$password"
