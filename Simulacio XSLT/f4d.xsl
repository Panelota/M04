<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <table border="1">
        <tr bgcolor="grey">
          <th>Pais</th>
          <th>Població</th>
          <th>Nombre de continents</th>
          <th>Nombre de fronteres</th>
        </tr>
        <xsl:for-each select="mondial/country">
        <xsl:sort select="@population" data-type="number" order="descending"/>
          <xsl:if test= "count(encompassed)>1 or count(border)>=10">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="@population"/></td>
              <td><xsl:value-of select="count(encompassed)"/></td>
              <td><xsl:value-of select="count(border)"/></td>
            </tr>
          </xsl:if>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>