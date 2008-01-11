TRANSLATION TEMPLATES FOR DRUPAL 6 RC2
================================================================================

The translation templates hosted here are updated for Drupal 6 RC2. The RC1
version marked the point in the development cycle for the string freeze. It
means that interface strings are only modified if extremely critical, so feel
free to dive in and translate Drupal 6 to your language. Even if the file names
change later, we will give you instructions to recover all your translations.

Updating Drupal 5 translations:
--------------------------------

Start at http://drupal.org/node/202631

File naming:
-------------

Just rename .pot files to .po files when translating, otherwise
leave them where they are (see below for information on doing test
packages)

Automated packaging:
---------------------

As of this writing, Drupal 6 translations are not yet packaged in the
format required. Watch http://drupal.org/node/207401 for updates.

Changes since Drupal 6.0 RC1:
------------------------------

 - root.pot is gone on purpose
   (update does not use t(), install should be in installer.pot)
 - default role names are translatable
 - theme region names are translatable
 - new permissions come from the permission unification effort
 - update module got some security updates
 - minimal changes in other strings

Notes to those who can't wait til automated packaging comes:
-------------------------------------------------------------

Drupal 6 comes with automated translation file import, so the translation
source strings are organized by location. For the translations to be imported
automatically, translated templates will be renamed for the translations
by the packager script such as (for example in Italian):

 - general.pot        to general.it.po
 - themes-garland.pot to themes-garland.it.po
 - ...
 
The hard rule is that the file name will end in the language code and
the .po extension, while keeping the original first part of the name. Drupal 6
translation packager scripts will use the first part of the file name for
file placement (eg. 'themes-garland'), while Drupal itself will look for the
last part when importing translations on your site (eg. 'it'). Finally,
the '.po' extension is important to identify the file as a translation
to import.

File placement is just as important as file naming. Translation files are
automtically imported from module and theme folders, and used from install
profile folders on installation. The following placement will be used
by the packager based on the template file set in this directory:

 - general.pot, root.pot, includes.pot, misc.pot and modules-system.pot
   translations to modules/system/translations
   
 - modules-*.pot translations to their corresponding modules/*/translations
   directory
   
 - themes-*.pot translations to their corresponding themes/*/translations
   directory
   
 - installer.pot to profiles/default/translations
   as it.po (for example in Italian)
   
Note that all this renaming and directory placement will be done by the
packaging script, you should only rename .pot files to .po files.

$Id: README.txt,v 1.6.2.3 2008/01/11 00:04:15 goba Exp $
