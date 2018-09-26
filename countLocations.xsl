<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    
    <xsl:template match="TEI">
        <xsl:copy-of select="(text/body/listPlace/place/location/country)"/>
           
    </xsl:template>

       
</xsl:stylesheet>

   