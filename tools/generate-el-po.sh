#!/bin/bash
#
# Generates a single po file (el.po) from a folder containing all the small 
# po files.

msgcat --use-first ../el-po/general.po ../el-po/[^g]*.po | msgattrib --no-fuzzy -o el.po

