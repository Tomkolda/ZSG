<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="text" encoding="utf-8" omit-xml-declaration="yes"/>
	<xsl:template match="/">

		<xsl:text>Faktura číslo: </xsl:text>
		<xsl:value-of select="faktura/@cislo"/>

		<xsl:text>&#xA;---------------------------------------------------------------------------</xsl:text>

		<xsl:apply-templates select="faktura/dodavatel"/>
		<xsl:apply-templates select="faktura/odberatel"/>

		<xsl:text>&#xA;Datum vystavení:  </xsl:text>
		<xsl:value-of select="faktura/@vystaveni"/>

		<xsl:text>&#xA;Datum splatnosti: </xsl:text>
		<xsl:value-of select="faktura/@splatnost"/>
		<xsl:text>&#xA;</xsl:text>
		
		<xsl:text>&#xA;Seznam položek:</xsl:text>
		<xsl:text>&#xA;~~~~~~~~~~~~~~~</xsl:text>

		<xsl:apply-templates select="faktura/polozka"/>

		<xsl:text>&#xA;&#xA;&#xA;Děkujeme za nákup!</xsl:text>

	</xsl:template>



	<xsl:template match="dodavatel">
		<xsl:text>&#xA;Dodavatel:</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>


	<xsl:template match="odberatel">
		<xsl:text>&#xA;Odběratel:</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>	


	<xsl:template match="nazev">
		<xsl:text>&#xA;</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>


	<xsl:template match="adresa">
		<xsl:text>&#xA;</xsl:text>
		<xsl:apply-templates/>
	</xsl:template>


	<xsl:template match="ico">
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>IČO: </xsl:text>
		<xsl:apply-templates/>
		<xsl:text>&#xA;</xsl:text>
	</xsl:template>


	<xsl:template match="polozka">
		<xsl:text>&#xA;* </xsl:text>
		<xsl:value-of select="popis"/>
		<xsl:text>&#xA;  </xsl:text>

		<xsl:value-of select="@ks"/>
		<xsl:text> ks</xsl:text>
		
		<xsl:text>.......DPH </xsl:text>	
		<xsl:value-of select="dph"/>
		<xsl:text> %.......</xsl:text>		
		
		<xsl:value-of select="cena"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="cena/@mena"/>

	</xsl:template>

</xsl:stylesheet>