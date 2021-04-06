<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <table border="1">
        <tr>
          <th>Pais</th>
        </tr>
        <xsl:for-each select="mondial/lake">
         <xsl:sort select="../country/name"/>
          <xsl:if test= "located/@country=../country/@id">
            <tr>
              <td><xsl:value-of select="../country/name"/></td>
            </tr>
          </xsl:if>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>