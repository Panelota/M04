<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <table border="1">
        <tr bgcolor="grey">
          <th>Pais no europeu</th>
          <th>Religió</th>
          <th>Percentatge d'habitants</th>
        </tr>
        <xsl:for-each select="mondial/country">
          <xsl:if test="name='Andorra' or name='Portugal' or name='Spain'">
         <xsl:for-each select="religions"> 
            <tr>
              <td><xsl:value-of select="../name"/></td>
              <td><xsl:value-of select="."/></td>
              <td><xsl:value-of select="@percentage"/>%</td>
            </tr>
            </xsl:for-each>
          </xsl:if>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>