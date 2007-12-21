#!/bin/bash
#
# Generates a single po file (el.po) from a folder containing all the small 
# po files.

mv ../5.x-el-po/installer.po ../5.x-el-po/installer.po.

msgcat --use-first ../5.x-el-po/general.po ../5.x-el-po/[^g]*.po | msgattrib --no-fuzzy -o el.po

mv ../5.x-el-po/installer.po. ../5.x-el-po/installer.po
