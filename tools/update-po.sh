#!/bin/bash
#
# This will update all .po files in current directory with appropriate file
# from ../drupal-pot/ directory. This is usefull when updating for example
# from 5.1 to 5.2 (when there is small number of changes).

cd ../el-po;
for i in *.po;
do msgmerge --verbose --no-wrap --update $i ../pot/${i}t ;
done
