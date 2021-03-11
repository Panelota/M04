<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h1>Informació de pel·lícules</h1>
      <xsl:apply-templates/>
    </body>
  </html>
</xsl:template>

<!-- TEMPLATE videoclub -->
  <xsl:template match="videoclub">
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
      <xsl:apply-templates select="pelicula"/>
    </table>
  </xsl:template>

<!-- TEMPLATE pelicules -->
  <xsl:template match="pelicula">
    <xsl:choose>
      <xsl:when test="nacionalitat='EEUU'">
        <tr bgcolor="red">
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
      </xsl:when>
      <xsl:when test="nacionalitat='UK'">
        <tr bgcolor="blue">
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
      </xsl:when>
      <xsl:otherwise>
        <tr bgcolor="green">
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
      </xsl:otherwise>
    </xsl:choose>

</xsl:template>
</xsl:stylesheet>