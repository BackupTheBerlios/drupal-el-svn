#!/bin/bash
#
# Generates a single po file (el.po) from a folder containing all the small 
# po files.

msgcat ../6.x-el-po/*.po | msgattrib --no-fuzzy -o el.po
