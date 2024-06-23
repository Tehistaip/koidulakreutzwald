<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		version="1.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />

  <xsl:strip-space elements="*"/>
  <xsl:template match="/">
    <xsl:element name="root">
      <xsl:apply-templates />
    </xsl:element>
  </xsl:template>
  
  
   <!-- from name only values -->
   <xsl:template match="//sentence">
     <xsl:if test="name">
       <xsl:element name="text">
	 <xsl:attribute name="number">
	   <xsl:value-of select="ancestor::text/@number"/>
	 </xsl:attribute>
	 <xsl:copy-of select="name"/>
       </xsl:element>
     </xsl:if>
   </xsl:template>
   <xsl:template match="notes" />
   <xsl:template match="lg" />
   <xsl:template match="div/w" />
   <xsl:template match="div/pc" />
</xsl:stylesheet>
