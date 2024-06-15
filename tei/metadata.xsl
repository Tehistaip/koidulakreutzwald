<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		version="1.0">
  <xsl:output method="text" version="1.0" encoding="UTF-8"/>

  <xsl:template match="/corpus">
    <xsl:value-of select="concat('number', '&#9;')" />
    <xsl:value-of select="concat('author', '&#9;')" />
    <xsl:value-of select="concat('recipient', '&#9;')" />
    <xsl:value-of select="concat('date', '&#9;')" />
    <xsl:value-of select="concat('datefrom', '&#9;')" />
    <xsl:value-of select="concat('dateto', '&#9;')" />
    <xsl:value-of select="concat('title', '&#9;')" />
    <xsl:value-of select="concat('source', '&#9;')" />
    <xsl:value-of select="'&#xA;'" />
    
  <xsl:for-each select="text">
    <xsl:value-of select="concat(@number, '&#9;')" />
    <xsl:value-of select="concat(@author, '&#9;')" />
    <xsl:value-of select="concat(@recipient, '&#9;')" />
    <xsl:value-of select="concat(@date, '&#9;')" />
    <xsl:value-of select="concat(@datefrom, '&#9;')" />
    <xsl:value-of select="concat(@dateto, '&#9;')" />
    <xsl:value-of select="concat(@title, '&#9;')" />
    <xsl:value-of select="concat(@source, '&#9;')" />
    <xsl:value-of select="'&#xA;'" />
  </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>

