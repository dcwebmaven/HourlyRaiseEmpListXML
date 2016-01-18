<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/">
  <xsl:for-each select="/Employees/Employee">
     Employee Name: <xsl:value-of select="First"/><br/>
     Original Rate: $<xsl:value-of select="HourlyRate"/><br/>
     Rate Increase: $<xsl:value-of select="format-number (HourlyRate * 0.05, '##0.00') "/><br/>
     Final Hourly Rate: $<xsl:value-of select="format-number ((HourlyRate * 0.05)+HourlyRate, '##0.00')"/><br/><br/>
  </xsl:for-each>
</xsl:template>

</xsl:stylesheet>