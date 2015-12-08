#!/bin/bash

RET=`curl  https://raw.githubusercontent.com/FortAwesome/Font-Awesome/4.5.0-wip/less/icons.less 2>/dev/null | grep "fa" | awk -F":before" '{print $1}' | awk '{sub(/^\.@{fa-css-prefix}-*/,""); print "\"" tolower($1) "\","}'`

FIRSTLINE="{"
LASTLINE="}"

echo $FIRSTLINE$RET$LASTLINE > FontAwesome.json

PHPFIRSTLINE="\$fontawesome = array("
PHPLASTLINE=");"

echo $PHPFIRSTLINE$RET$PHPLASTLINE > FontAwesome.php
