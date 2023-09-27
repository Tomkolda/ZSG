<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="text" encoding="utf-8" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<xsl:text>Faktura pro odběratele "</xsl:text>
		<xsl:apply-templates select="faktura/odberatel/nazev"/>
		<xsl:text>" číslo </xsl:text>
		<xsl:value-of select="faktura/@cislo"/>
	</xsl:template>	
</xsl:stylesheet>