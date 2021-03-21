<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <table border="1">
        <tr bgcolor="grey">
          <th>Pais no europeu</th>
          <th>% d'habitants que parla alemany</th>
        </tr>
        <xsl:for-each select="mondial/country">
          <xsl:if test="languages='German' and encompassed/@continent!='f0_119'">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="languages/@percentage"/>%</td>
            </tr>
          </xsl:if>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>