<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" encoding="utf-8" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>
					Faktura
				</title>
			</head>
			<body>
				Nyní je aplikováno vše, bez ladu a skladu.<br/>
				<br/>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>