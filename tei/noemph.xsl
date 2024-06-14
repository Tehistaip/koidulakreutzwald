<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		version="1.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:strip-space elements="*"/>

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="emph">
    <xsl:value-of select="."/>
  </xsl:template>
  
  <xsl:template match="s">
    <xsl:copy-of select="date/node()"/>
    <xsl:copy-of select="node()"/>
  </xsl:template>
</xsl:stylesheet>
