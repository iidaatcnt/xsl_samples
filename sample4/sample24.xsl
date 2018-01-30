<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
table{border:solid 1pt black;}
th{background-color:silver;padding:5;}
td{border:solid 1pt black;padding:10;}
</style>
</head>
<body><xsl:apply-templates select="�S��" /></body>
</html>
</xsl:template>
<xsl:template match="�S��">
<div>
<p>���i�̍������Ƀ\�[�g����Ă��܂��D</p>
<table>
	<tr><th>�ԍ�</th><th>�i��</th><th>���i</th></tr>
	<xsl:for-each select="���i" order-by="-number(���i)">
		<tr>
			<td><xsl:value-of select="�ԍ�" /></td>
			<td><xsl:value-of select="�i��" /></td>
			<td style="text-align:right"><xsl:value-of select="���i" /></td>
		</tr>
	</xsl:for-each>
</table>
</div>
<div>
<p>���i�̒Ⴂ���Ƀ\�[�g����Ă��܂��D</p>
<table>
	<tr><th>�ԍ�</th><th>�i��</th><th>���i</th></tr>
	<xsl:for-each select="���i" order-by="number(���i)">
		<tr>
		<td><xsl:value-of select="�ԍ�" /></td>
		<td><xsl:value-of select="�i��" /></td>
		<td style="text-align:right"><xsl:value-of select="���i" /></td>
		</tr>
	</xsl:for-each>
</table>
</div>
</xsl:template>
</xsl:stylesheet>