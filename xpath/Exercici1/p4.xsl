<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h1>Informació de pel·lícules</h1>
  <table border="1">
    <tr bgcolor="yellow">
      <th>Títol</th>
      <th>Nacionalitat</th>
      <th>Productor</th>
      <th>Director</th>
      <th>Any</th>
      <th>Duració</th>
      <th>Gènere</th>
      <th>Sinopsi</th>
      <th>URL</th>
    </tr>

    <xsl:for-each select="videoclub/pelicula">
    <xsl:sort select="pais and director and titol" order="ascending"/>
        <xsl:if test="nacionalitat='EEUU' and director='Alfred Hitchcock'">
            <tr>
                <td><xsl:value-of select="titol"/></td>
                <td><xsl:value-of select="nacionalitat"/></td>     
                <td><xsl:value-of select="productor"/></td>
                <td><xsl:value-of select="director"/></td>
                <td><xsl:value-of select="any"/></td>
                <td><xsl:value-of select="duracio"/></td>
                <td><xsl:value-of select="genere"/></td>
                <td><xsl:value-of select="sinopsi"/></td>
                <td><xsl:value-of select="url"/></td>
            </tr>
        </xsl:if>
    </xsl:for-each>

  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>