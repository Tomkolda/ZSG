<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="text" encoding="utf-8" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<xsl:text>Nyní je aplikováno vše, bez ladu a skladu.&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
</xsl:stylesheet>