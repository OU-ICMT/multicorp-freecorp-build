<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  
    <!--
    <h2>Multicorp 5 default input</h2>

    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>Ribbon Tab Name</th>
      </tr>

      <tr>
        <td><xsl:value-of select="@name"/></td>
        <td><xsl:value-of select="@ribbonTabName"/></td>
      </tr>
	  <xsl:for-each select="Parameter">

	  <tr>
		<td><xsl:value-of select="@name"/></td>
		<td><xsl:value-of select="@Varname"/></td>
		<td><xsl:value-of select="@className"/></td>
		<td align="center"><xsl:value-of select="@defaultValue"/></td>
		<td><xsl:value-of select="@softLimit"/></td>
		<td><xsl:value-of select="@hardLimit"/></td>
		<td><xsl:value-of select="@unitType"/></td>
		<td><xsl:value-of select="@displayOrder"/></td>
		<td><xsl:value-of select="@options"/></td>
	  </tr>
	  </xsl:for-each>
	</table>

	-->
  
  
  
  
  
  	<xsl:for-each select="MulticorpDefaultInput/Model">
	<h2>Model/Model</h2>
	<table border="1">
  	  <tr><td>
	  <b><xsl:value-of select="@name"/></b> | <i><xsl:value-of select="@ribbonTabName"/></i>
	  <tr>
		<td width="200">Name</td>
	<!--	<td align="center" width="350">className</td> -->
		<td align="center" width="100">defaultValue / <br/>defaultSelection</td>
		<td align="center" width="100">softLimit</td>
		<td align="center" width="100">hardLimit</td>
		<td align="center" width="200">unitType</td>
		<td align="center" width="100">displayOrder</td>
		<td align="center">units</td>
		<td align="center" width="250">options</td>

	  </tr>
    <tr>
      <td>Note</td>
      <td colspan="7">
        <xsl:value-of select="Note"/>
      </td>
    </tr>
	  <xsl:for-each select="Parameter">
	  <tr>
		<td width="200"><xsl:value-of select="@name"/></td>
	<!--	<td align="center" width="350"><i><xsl:value-of select="@className"/></i></td> -->
		<td align="center" width="100"><xsl:value-of select="@defaultValue"/><xsl:value-of select="@defaultSelection"/></td>
		<td align="center" width="100"><xsl:value-of select="@softLimit"/></td>
		<td align="center" width="100"><xsl:value-of select="@hardLimit"/></td>
		<td align="center" width="200"><xsl:value-of select="@unitType"/></td>
		<td align="center" width="100"><xsl:value-of select="@displayOrder"/></td>
		<td align="center"><xsl:value-of select="@units"/></td>
		<td align="center"><xsl:value-of select="@options"/></td>
	  </tr>
	  </xsl:for-each>
	  </td></tr>
	  <xsl:for-each select="Model">
	  <tr>
		<td><b><u><xsl:value-of select="@name"/></u></b> | <xsl:value-of select="@displayName"/> | <xsl:value-of select="@className"/> | <i><xsl:value-of select="@ribbonTabName"/></i> | <xsl:value-of select="@processNodeName"/></td>
	  </tr>
    <tr>
      <td>Notes</td>
      <td colspan="6">
        <xsl:value-of select="Note"/>
      </td>
    </tr>
	  <tr><td>
		<xsl:for-each select="ParamGroup">
		<tr>
		  <td><b><xsl:value-of select="@name"/></b> -- display order: <xsl:value-of select="@displayOrder"/></td>
		</tr>
		<tr><td>
		
		  <xsl:for-each select="Parameter">
		  <tr>
			<td width="200"><xsl:value-of select="@name"/></td>
	<!--		<td align="center" width="300"><i><xsl:value-of select="@className"/></i></td> -->
			<td align="center" width="100"><xsl:value-of select="@defaultValue"/></td>
			<td align="center" width="100"><xsl:value-of select="@softLimit"/></td>
			<td align="center" width="100"><xsl:value-of select="@hardLimit"/></td>
			<td align="center" width="200"><xsl:value-of select="@unitType"/></td>
			<td align="center" width="100"><xsl:value-of select="@displayOrder"/></td>
			<td align="center"><xsl:value-of select="@dependency"/></td>
			<td align="center"><xsl:value-of select="@isOutput"/></td>
		  </tr>

		  </xsl:for-each>

		  <xsl:for-each select="ParamTable">
		  <table border="1">
		  <tr>
			<td colspan="9"><u><xsl:value-of select="@name"/></u></td>
		  </tr>
		  <xsl:for-each select="ParamRow">
			<tr><td rowspan="5"><u><xsl:value-of select="@name"/></u></td></tr>
			<tr>
			<td align="center">Name</td>
			<td align="center">defaultValue</td>
			<td align="center">softLimit</td>
			<td align="center">hardLimit</td>
			<td align="center">unitType</td>
			<td align="center">units</td>
			<td align="center">displayOrder</td>
			</tr>
			<xsl:for-each select="Parameter">
			<tr>
			  <td width="200"><xsl:value-of select="@name"/></td>
			  <td align="center" width="100"><xsl:value-of select="@defaultValue"/></td>
			  <td align="center" width="100"><xsl:value-of select="@softLimit"/></td>
			  <td align="center" width="100"><xsl:value-of select="@hardLimit"/></td>
			  <td align="center" width="200"><xsl:value-of select="@unitType"/></td>
			  <td align="center" width="50"><xsl:value-of select="@units"/></td>
			  <td align="center" width="50"><xsl:value-of select="@displayOrder"/></td>
			</tr>

			</xsl:for-each>	
		  </xsl:for-each>
		  </table>
		  </xsl:for-each>		  
				  
		
		  <xsl:for-each select="ParamGroup">
		  <tr>
			<td colspan="8"><i><xsl:value-of select="@name"/></i></td>
		  </tr>

		  <tr>
			<td width="200">Name</td>
	<!--		<td align="center" width="400">className</td> -->
			<td align="center">defaultValue</td>
			<td align="center">softLimit</td>
			<td align="center">hardLimit</td>
			<td align="center">unitType</td>
			<td align="center">units</td>
			<td align="center" width="100">displayOrder</td>
			<td align="center">dependency</td>
			<td align="center">output</td>
		  </tr>		  
		  
		<!--  <xsl:if test="position() mod 2 = 0"> -->
		  <xsl:for-each select="ParamGroup">
			<tr>
				<td><xsl:value-of select="@name"/></td>		
			</tr>
		<!--  </xsl:if> -->
		  <xsl:for-each select="Parameter">
		  <tr>
			<td width="200"><xsl:value-of select="@name"/></td>
	<!--		<td align="center" width="350"><i><xsl:value-of select="@className"/></i></td> -->
			<td align="center" width="100"><xsl:value-of select="@defaultValue"/></td>
			<td align="center" width="100"><xsl:value-of select="@softLimit"/></td>
			<td align="center" width="100"><xsl:value-of select="@hardLimit"/></td>
			<td align="center" width="200"><xsl:value-of select="@unitType"/></td>
			<td align="center" width="200"><xsl:value-of select="@units"/></td>
			<td align="center" width="100"><xsl:value-of select="@displayOrder"/></td>
			<td><xsl:value-of select="@dependency"/></td>
		  </tr>
		  </xsl:for-each>
		  
		  
		  </xsl:for-each>

		  <xsl:for-each select="Parameter">
		  <tr>
			<td width="200"><xsl:value-of select="@name"/></td>
	<!--		<td align="center" width="350"><i><xsl:value-of select="@className"/></i></td> -->
			<td align="center" width="100"><xsl:value-of select="@defaultValue"/></td>
			<td align="center" width="100"><xsl:value-of select="@softLimit"/></td>
			<td align="center" width="100"><xsl:value-of select="@hardLimit"/></td>
			<td align="center" width="200"><xsl:value-of select="@unitType"/></td>
			<td align="center" width="100"><xsl:value-of select="@displayOrder"/></td>
			<td align="center" width="120"><xsl:value-of select="@dependency"/></td>
			<td align="center"><xsl:value-of select="@isOutput"/></td>
		  </tr>

		  </xsl:for-each>
		  
		  
		  </xsl:for-each>
		  

		   
		</td></tr>
		</xsl:for-each>
		
		<tr><td>
		<xsl:for-each select="Model">
			<tr>
        <td>
          <tr>
            <td>Notes</td>
            <td colspan="7">
              <xsl:value-of select="Note"/>
            </td>
          </tr>
			<xsl:for-each select="Parameter">
			<tr>
				<td width="200"><xsl:value-of select="@name"/></td>
				<td align="center" width="100"><xsl:value-of select="@defaultValue"/></td>
				<td align="center" width="100"><xsl:value-of select="@softLimit"/></td>
				<td align="center" width="100"><xsl:value-of select="@hardLimit"/></td>
				<td align="center" width="200"><xsl:value-of select="@unitType"/></td>
				<td align="center" width="100"><xsl:value-of select="@displayOrder"/></td>
				<td align="center" width="100"><xsl:value-of select="@units"/></td>
			</tr>
			</xsl:for-each>
			</td></tr>
		</xsl:for-each>
		</td></tr>
		
		<tr><td>
		<xsl:for-each select="Parameter">
		<tr>
			<td width="200"><xsl:value-of select="@name"/></td>
	<!--		<td align="center" width="350"><i><xsl:value-of select="@className"/></i></td> -->
			<td align="center" width="100"><xsl:value-of select="@defaultValue"/></td>
			<td align="center" width="100"><xsl:value-of select="@softLimit"/></td>
			<td align="center" width="100"><xsl:value-of select="@hardLimit"/></td>
			<td align="center" width="200"><xsl:value-of select="@unitType"/></td>
			<td align="center" width="100"><xsl:value-of select="@displayOrder"/></td>
			<td><xsl:value-of select="@dependency"/></td>
		</tr>
		</xsl:for-each>
		</td></tr>
		
		<xsl:for-each select="ParamLimits">
		<tr>
		  <td width="200"><xsl:value-of select="@paramName"/></td>
		  <td align="center" width="100"><xsl:value-of select="@soft_limits"/></td>
		  <td align="center" width="100"><xsl:value-of select="@hard_limits"/></td>
		</tr>
		</xsl:for-each>
	  </td></tr>
    </xsl:for-each>
	</table>
	</xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>