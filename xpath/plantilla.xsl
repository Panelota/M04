<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h1>Titols i Autors de la meva Llibreria</h1>
  <table border="1">
    <tr bgcolor="yellow">
      <th>Títol</th>
      <th>Autor</th>
      <th>Llengua</th>
      <th>Any</th>
      <th>Preu</th>
    </tr>
   <!-- 
    <xsl:for-each select="llibreria/llibre[preu&lt;10.0]">
    <xsl:for-each select="llibreria/llibre[autor!='Patricia Cornwell']">
    <xsl:for-each select="llibreria/llibre[any&lt;1990]">
     -->
    <xsl:for-each select="llibreria/llibre">
    <xsl:sort select="preu" data-type="number" order="descending"/>

    <tr>
      <td><xsl:value-of select="titol"/></td>
      <td><xsl:value-of select="autor"/></td>
      <td><xsl:value-of select="titol/@llengua"/></td>
      <td><xsl:value-of select="any"/></td>
      <td><xsl:value-of select="preu"/></td>

    </tr>

    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
