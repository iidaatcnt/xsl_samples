<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="全体/題名" /></title>
</head>
<body><xsl:apply-templates select="全体/本文" /></body>
</html>
</xsl:template>
<xsl:template match="全体/本文">
	<xsl:for-each select="リスト">
		<ol>
			<xsl:for-each select="項目">
				<li><xsl:value-of select="."/></li>
			</xsl:for-each>
		</ol>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
