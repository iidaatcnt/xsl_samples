<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="全体/題名" /></title>
</head>
<body><xsl:apply-templates select="全体" /></body>
</html>
</xsl:template>
<xsl:template match="全体">
	<xsl:for-each select="図">
		<div>
		<span><xsl:value-of select="注釈" /></span>
		<img>
			<xsl:attribute name="src">
				<xsl:value-of select="イラスト" />
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="注釈" />
			</xsl:attribute>
		</img>
		</div>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
