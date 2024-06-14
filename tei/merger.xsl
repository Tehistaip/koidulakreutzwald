<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:strip-space elements="*"/>

  <xsl:template match="collection">
    <corpus>
      <xsl:copy-of select="document(doc/@href)/text"/>
    </corpus>
  </xsl:template>
  <xsl:template match="date">
    <xsl:value-of select="."/>
  </xsl:template>
</xsl:transform>
