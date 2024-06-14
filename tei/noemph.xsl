<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		version="1.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:strip-space elements="*"/>

  <xsl:template match="text">
    <xsl:attribute name="title">
      <xsl:value-of select="body/h2" />
    </xsl:attribute>
  </xsl:template>
  
  
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="emph">
    <xsl:value-of select="."/>
  </xsl:template>
  

  <xsl:template match="s">
    <xsl:element name="sentece">
      <xsl:apply-templates />
    </xsl:element>
  </xsl:template>

  <xsl:template match="p">
    <xsl:element name="paragraph">
      <xsl:apply-templates />
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="date">
    <xsl:copy-of select="*"/>
  </xsl:template>


</xsl:stylesheet>
