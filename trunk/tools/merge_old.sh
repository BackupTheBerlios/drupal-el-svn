#!/bin/bash

for i in ../6.x-pot/*.pot; do msgmerge --compendium ../el.po-5.x --no-wrap -o ../6.x-el-po/`basename $i .pot`.po /dev/null $i; done
