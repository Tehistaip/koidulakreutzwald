# Teha

Nr. 8. kuupäev on segane, ei arvesta metaandmetes olevaga.


## Lammuta algfailideks

```
for i in {1..7} ; do xsltproc -o kt-$i.xml --param target $i lammuta.xsl koidulakreutzwald.xml ; done

for i in {1..7} ; do xsltproc -o name-$i.xml names.xsl kt-$i.xml ; done


```
