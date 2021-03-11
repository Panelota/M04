<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
        <table border="1">
          <xsl:for-each select="numeros/vector">
            <tr bgcolor="grey">
              <xsl:for-each select="num">
                <xsl:sort select="." order="ascending"/>
                <td><xsl:value-of select="."/></td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>