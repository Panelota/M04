<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h1>Informació de pel·lícules</h1>
  <table border="1">
    <tr bgcolor="yellow">
      <th>Títol</th>
      <th>Director</th>
      <th>Foto</th>
    </tr>

    <xsl:for-each select="videoclub/pelicula">
    <tr>
      <td><xsl:value-of select="titol"/></td>
      <td><xsl:value-of select="director"/></td>
      <td>
      <img>
        <xsl:attribute name="SRC">
          <xsl:value-of select="foto"/>
        </xsl:attribute>
      </img>
      </td>
    </tr>

    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>