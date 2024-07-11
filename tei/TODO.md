# Teha

Nr. 8. kuupäev on segane, ei arvesta metaandmetes olevaga.



## Lammuta algfailideks

```
for i in {1..7} ; do xsltproc -o kt-$i.xml --param target $i lammuta.xsl koidulakreutzwald.xml ; done

for i in {1..7} ; do xsltproc -o name-$i.xml names.xsl kt-$i.xml ; done


```



## Parandusi vajavad

* 8-15
* 17,18,20
* 22-41
* 44-52
* 55-59
* 61-62
* 64-67
* 69-74
* 76-94



## Protsesside järjekord

* Kõigepealt liida algfailid, siis lahuta


### Failid kokku

Eraldiseisvad morfanalüüsitud failid üheks kokku.

```
xsltproc -o koidulakreutzwald-kokku.xml merger.xsl collection.xml 
```

Tulemusfail **sisaldab** `h2` märgendeid.


### Kogufaili teisendused

Noemph stiililehe teisendused

```
xsltproc -o koidulakreutzwald-prevert.xml noemph.xsl koidulakreutzwald-kokku.xml 

```

Tulemusfail **ei sisalda** `h2` elemente ja **sisaldab** `text` elemente.


### vrt failide teisendused

```
./tei2vrt.py -l ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-prevert.xml ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwalt-prevert.vrt
```


### Kuupäevade korrastamine

```
./dateadjust.py ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-prevert.xml ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald.xml -m ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-metadata.tsv
```

### sql fail

```
./vrt2sql_timespan.py -t text -c KOIDULAKREUTZWALD -m -o  ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald.sql ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-prevert.vrt > ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald.vrt 
```


### Taaslahutamine

``` 
 for i in {1..94} ; do xsltproc -o kt-$i.xml --param target $i lammuta.xsl koidulakreutzwald.xml ; done
```

### Nimede parandus kokku

```
xsltproc -o koidulakreutzwald-kokku.xml merger.xsl collection.xml 

xsltproc -o koidulakreutzwald-prevert.xml noemph.xsl koidulakreutzwald-kokku.xml 

~/GIT/Varblane/varblane/tei2vrt.py -l ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-prevert.xml ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwalt-prevert.vrt

~/GIT/Varblane/varblane/dateadjust.py ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-prevert.xml ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald.xml -m ~/GIT/github/Tehistaip/koidulakreutzwald/tei/koidulakreutzwald-metadata.tsv

for i in {1..94} ; do xsltproc -o kt-$i.xml --param target $i lammuta.xsl koidulakreutzwald.xml ; done

for i in {1..94} ; do xsltproc -o name-$i.xml names.xsl kt-$i.xml ; done


```
 
 
### Nimede paranduse vaatamine
 
```
 for i in {1..94} ; do cat name-$i.xml; done |less
```



