#!/bin/bash
#
# Build collection according to:
#
# https://stackoverflow.com/questions/37694540/merge-multiple-xml-files-to-one-single-xml-file-using-xslt
#
# ==============================================

# TOOLS="~/GIT/github/underivask/ver-20/tools"

# echo "`pwd`"

TARGET="collection.xml"

echo '<?xml version="1.0" encoding="UTF-8"?>' > $TARGET
echo "<collection>" >> $TARGET
for i in  ui*xml; 
do echo "<doc href=\"$i\"/>" >> $TARGET
done
echo "</collection>" >> $TARGET


