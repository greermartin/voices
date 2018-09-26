<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns:xi="http://www.w3.org/2001/XInclude"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
   
   <!-- Removes "#" that precedes Location and Camp codes/IDs in event and birth elements and interview locations -->
   
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
  
    <xsl:template match="tei:bibl/tei:placeName/@ref">
        <xsl:variable name="code" select="."/>
        <xsl:choose>
            <xsl:when test="contains($code,'#')">
                <xsl:attribute name="ref">
                    <xsl:value-of select="substring-after($code,'#')"/>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
  
    <xsl:template match="tei:birth/@ref">
        <xsl:variable name="code" select="."/>
        <xsl:choose>
            <xsl:when test="contains($code,'#')">
                <xsl:attribute name="ref">
                    <xsl:value-of select="substring-after($code,'#')"/>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
  
    <xsl:template match="tei:event/@ref">
        <xsl:variable name="code" select="."/>
        <xsl:choose>
            <xsl:when test="contains($code,'#')">
                <xsl:attribute name="ref">
                    <xsl:value-of select="substring-after($code,'#')"/>
                </xsl:attribute>
            </xsl:when>
        <xsl:otherwise>
            <xsl:copy/>
        </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>

