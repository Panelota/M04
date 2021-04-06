<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <table border="1">
        <tr>
          <th>Ciutat</th>
          <th>Num. d'habitants</th>
        </tr>
        <xsl:for-each select="mondial/country/city">
          <xsl:if test= "../@name='South Africa'">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="population"/></td>
            </tr>
          </xsl:if>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>