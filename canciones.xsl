<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" href="canciones.css"/>	
			</head>
			
			<body>
				<h1>Canción: - <xsl:value-of select="cancion/titulo"/></h1>
					<p>Autor: - <xsl:value-of select="cancion/autor"/></p>
				<br/>
				
				<xsl:for-each select="cancion/letra/estrofa">
					<xsl:for-each select="verso">
							<p><xsl:value-of select="."/></p>										
					</xsl:for-each>
				</xsl:for-each>
					
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>