<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
  <table border="1">
  <xsl:for-each select="//num">
    <tr>    
    <xsl:for-each select="num">
    <xsl:sort select="@v"/>
      <td><img src="{.}"/></td>
    </xsl:for-each> 
    </tr>
  </table>
</body>
</html>
</xsl:template>

</xsl:stylesheet> 
