<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
	<xsl:template match="/">
		<HTML lang="ja">
			<HEAD>
				<TITLE><xsl:value-of select="全体/題名" /></TITLE>
				<style type="text/css">
				table{border:solid 1pt black;}
				td{border:solid 1pt black;padding:10;}
				</style>
			</HEAD>
			<BODY><xsl:apply-templates select="全体/商品" /></BODY>
		</HTML>
	</xsl:template>
	<xsl:template match="全体/商品">
		<TABLE>
			<TR><TH>番号</TH><TH>品名</TH><TH>価格</th></TR>
			<TR>
				<TD><xsl:value-of select="番号" /></TD>
				<TD><xsl:value-of select="品名" /></TD>
				<TD><xsl:value-of select="価格" /></TD>
			</TR>
		</TABLE>
	</xsl:template>
</xsl:stylesheet>