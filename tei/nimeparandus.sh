#!/bin/bash
#
# Do all things needed for names improvement
#
#

VARBLANE_PATH="/home/nemee/GIT/Varblane/varblane"

xsltproc -o koidulakreutzwald-kokku.xml merger.xsl collection.xml 

xsltproc -o koidulakreutzwald-prevert.xml noemph.xsl koidulakreutzwald-kokku.xml 

$VARBLANE_PATH/tei2vrt.py -l ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-prevert.xml ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwalt-prevert.vrt

$VARBLANE_PATH/dateadjust.py ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-prevert.xml ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald.xml -m ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-metadata.tsv

for i in {1..94} ; do xsltproc -o kt-$i.xml --param target $i lammuta.xsl koidulakreutzwald.xml ; done

for i in {1..94} ; do xsltproc -o name-$i.xml names.xsl kt-$i.xml ; done
