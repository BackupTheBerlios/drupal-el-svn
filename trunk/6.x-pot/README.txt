TRANSLATION TEMPLATES FOR DRUPAL 6 RC1
================================================================================

The translation templates hosted here are updated for Drupal 6 RC1. This version
marks the point in the development cycle for the string freeze. It means that
interface strings are only modified if extremely critical, so feel free to dive
in and translate Drupal 6 to your language. Even if the file names change later,
we will give you instructions to recover all your translations.

Drupal 6 comes with automated translation file import, so the translation
source strings are organized by location. For the translations to be imported
automatically, translated templates should be renamed for the translations such
as (for example in Italian):

 - general.pot        to general.it.po
 - themes-garland.pot to themes-garland.it.po
 - ...
 
The hard rule is that the file name should end in the language code and
the .po extension, while keeping the original first part of the name. Drupal 6
translation packager scripts will look for the first part of the file name for
file placement (eg. 'themes-garland'), while Drupal itself will look for the
last part when importing translations on your site (eg. 'it'). Finally,
the '.po' extension is important to identify the file as a translation
to import.

File placement is just as important as file naming. Translation files are
automtically imported from module and theme folders, and used from install
profile folders on installation. The following placement is ideal with the
files in this package:

 - general.pot, root.pot, includes.pot, misc.pot and modules-system.pot
   translations to modules/system/translations
   
 - modules-*.pot files to their corresponding modules/*/translations
   directory
   
 - themes-*.pot files to their corresponding themes/*/translations
   directory
   
 - installer.pot to profiles/default/translations

$Id: README.txt,v 1.6.2.2 2007/12/20 09:52:40 goba Exp $
