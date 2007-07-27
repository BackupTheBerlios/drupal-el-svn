This directory contains the translation template files for
the various Drupal core modules. The documentation below only
covers the most important details. For more information, please
read the Translator's guide at: http://drupal.org/node/11130

Translation
===========

Translators should start by getting all of them and translate them to their
language of choice.

The translated files should be stored in contrib-cvs/translations/<id>,
where <id> is the RFC 4646 language code. If you don't know your code, ask
on the translations mailing list (translations at drupal.org).

You should only put the individual translated files in that directory.
A script will generate a merged <id>.po file. There is also an installer.pot
file which will not get merged into the <id>.po file. This is used by the
installer, and should not be imported to the Drupal database. Make sure to 
fill out the header section of each file and rename them to .po from .pot.

Contrib modules should offer a POT file, too. It should be distributed in
their own subdirectory in contrib-cvs/modules.

Generating translation templates
================================

Look into the Translation template extractor project
(http://drupal.org/project/potx) for the tool used to
generate translation templates.

Updating existing translations
==============================

Once in a while we will create new template files in this subdirectory as
sometimes strings get added or changed. Translators should then run
msgmerge on their auto-generated <id>.po file against each new POT file
and put the resulting PO file back in their subdirectory.


$Id: README.txt,v 1.4.2.2 2007/04/08 08:46:40 goba Exp $