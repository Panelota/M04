<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <table border="1">
        <tr>
          <th>Ciutat</th>
          <th>Graus Longitud</th>
          <th>Graus Latitud</th>
        </tr>
        <xsl:for-each select="mondial/country/province/city">
           <xsl:if test= "@longitude >= 30 and @longitude &lt;= 31">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="@longitude"/></td>
              <td><xsl:value-of select="@latitude"/></td>
            </tr>
           </xsl:if>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>