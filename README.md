# koidulakreutzwald

Lydia Koidula ja Friedrich Reinhold Kreutzwaldi kirjavahetus.

## Kaustad ja failid

### `xml` 

Iga kiri eraldi failis xml vormingus. Märgendatud on pealkirjad, lõigud, märkused.


### `tei`

#### Andmefailid

```

koidula-kreutzwald-01.xml

```



Iga kiri eraldi failis xml vormingus. Märgendatud on pealkirjad, lõigud, laused, sõnad, nime- ja ajaväljendid, morfoloogiline analüüs.


#### Stiilifailid

* `merger.xsl` --- teeb kõigist kirjadest ühe koondfaili
* `noemph.xsl` --- teisendab faili
* `metadata.xsl` --- teeb metaandmete faili

### `vert`

Kõik failid kokku vert vormingus. Fail on sobiv kasutamiseks korpusepäringusüsteemis `korp`.


## Töövoog

### Kirjafailide nimekiri

```

./build-collection.sh

```

Skripti töö tulemusena valmib fail `collection.xml`, mille sisuks on 
iga kirja sisaldav fail:

```

<?xml version="1.0" encoding="UTF-8"?>
<collection>
<doc href="koidula-kreutzwald-01.xml"/>
<doc href="koidula-kreutzwald-02.xml"/>
<doc href="koidula-kreutzwald-03.xml"/>
[ - - - ]
<doc href="koidula-kreutzwald-94.xml"/>
</collection>

```

### Koondfail

```

xsltproc -o koidulakreutzwald-kokku.xml merger.xsl collection.xml 
```

