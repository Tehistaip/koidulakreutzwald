<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		version="1.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:strip-space elements="*"/>

  <xsl:template match="text">
    <xsl:element name="text">
      <xsl:attribute name="title">
	<xsl:value-of select="./body/h2" />
      </xsl:attribute>
      <xsl:attribute name="author">
	<xsl:value-of select="./body/h2/@author" />
      </xsl:attribute>
      <xsl:attribute name="number">
	<xsl:value-of select="./body/h2/@number" />
      </xsl:attribute>
      <xsl:attribute name="source">
	<xsl:value-of select="./body/h2/@source" />
      </xsl:attribute>
      <xsl:attribute name="recipient">
	<xsl:call-template name="substring-after-last">
          <xsl:with-param name="input" select="./body/h2" />
          <xsl:with-param name="marker" select="' '" />
        </xsl:call-template>
      </xsl:attribute>
    </xsl:element>
    <xsl:apply-templates />
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

  <xsl:template match="source" />
  <xsl:template match="h2" />

  <xsl:template name="substring-after-last">
    <xsl:param name="input" />
    <xsl:param name="marker" />
    <xsl:choose>
      <xsl:when test="contains($input,$marker)">
        <xsl:call-template name="substring-after-last">
          <xsl:with-param name="input"
			  select="substring-after($input,$marker)" />
          <xsl:with-param name="marker" select="$marker" />
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$input" />
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="get-recipient">
    <xsl:param name="input" />
    <xsl:choose>
      <xsl:when test="substring($input,1,3)='KOI'">
	KREUTZWALD
      </xsl:when>
      <xsl:otherwise>
	KOIDULA
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


</xsl:stylesheet>
