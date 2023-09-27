<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" encoding="utf-8" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>
					<xsl:text>Faktura číslo: </xsl:text>
					<xsl:value-of select="faktura/@cislo"/>
				</title>
			</head>
			<body>
				<div align="right">
					<strong><font size="+1">Faktura <xsl:value-of select="faktura/@cislo"/></font></strong>
				</div>
				<table border="1" width="100%">
					<tr valign="top">
						<td rowspan="3">
							<xsl:apply-templates select="faktura/dodavatel"/>
						</td>
						<td>
							<xsl:apply-templates select="faktura/odberatel"/>
						</td>
					</tr>
					<tr>
						<td>
							<xsl:text>Datum vystavení: </xsl:text>
							<xsl:value-of select="faktura/@vystaveni"/>
						</td>
					</tr>
					<tr>
						<td>
							<xsl:text>Datum splatnosti: </xsl:text>
							<xsl:value-of select="faktura/@splatnost"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<table border="0" width="100%">
									<tr>
										<td><strong>Popis</strong></td>
										<td align="right"><strong>Ks</strong></td>
										<td align="right"><strong>DPH</strong></td>
										<td align="right"><strong>Cena</strong></td>
									</tr>
								<xsl:apply-templates select="faktura/polozka"/>
							</table>
						</td>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>


	<xsl:template match="dodavatel">
		<font color = "red"><i> 
        <xsl:text>&#xA;Dodavatel: </xsl:text>
        </i></font>
		<br/>
		<xsl:apply-templates/>
	</xsl:template>


	<xsl:template match="odberatel">
        <font color = "blue"><i>
		<xsl:text>&#xA; Odběratel:</xsl:text>
        </i></font>
		<br/>
		<xsl:apply-templates/>
	</xsl:template>


	<xsl:template match="nazev">
		<strong>
		<xsl:apply-templates/>
		</strong>
		<br/>
	</xsl:template>


	<xsl:template match="adresa">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>


	<xsl:template match="ico">
		<xsl:text>IČO: </xsl:text>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>


	<xsl:template match="polozka">
		<tr>
			<td>
				<xsl:value-of select="popis"/>
			</td>
			<td align="right">
				<xsl:value-of select="@ks"/>
			</td>
			<td align="right">
				<xsl:value-of select="dph"/>
				<xsl:text>%</xsl:text>
			</td>
			<td align="right">
				<xsl:value-of select="cena"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="cena/@mena"/>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>