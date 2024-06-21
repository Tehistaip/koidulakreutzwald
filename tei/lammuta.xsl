<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:param name="target" />
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="corpus/text">
    <xsl:if test="@number=$target">
      <xsl:element name="corpus">
	<xsl:copy-of select="." />
      </xsl:element>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
