<?xml version="1.0" encoding="UTF-8" ?>
	
	
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		
	  <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />
      
      
    
      
      <xsl:key name="menuItem" match="menuItems" use="foodCourse" />
      
      <xsl:template match="/">
      	<html>
       		<head>
       			<title>Greek Menu Finance</title>
        		<link href="finance.css"
            	rel="stylesheet" type="text/css" />
       		</head>
       			<body>
       				<div id="picture">
       					<img src="finance.png" name="slide" />
       					<script src="financeslide.js">
       				</script>
       				</div>
       				<xsl:apply-templates select="finance/title" />
       				<xsl:apply-templates select="finance/links/link" />
       	
       				<xsl:for-each select="//menuItems[generate-id()=generate-id(key('menuItem',foodCourse)[1])]" >
       					
			   		 <table align="center" class="employeeList">
			   	<caption><xsl:value-of select="foodCourse" /></caption>
			   	<thead>
			   		<tr>
			   			<th>Name</th>
			   			<th>Position</th>
			   			<th>Salary</th>
			   			<th>Phone</th>
			   		</tr>
			   	</thead>
			   	<tbody>
			   		<xsl:apply-templates select="key('menuItem', foodCourse)">
			   			<xsl:sort select="foodCourse" />
			   		</xsl:apply-templates>
			   	</tbody>
			   </table>
			   </xsl:for-each>
       
       			</body>
       		</html>
      </xsl:template>
      
       <xsl:template match="title">
      		<div id="title">
      			<xsl:value-of select="." />
      		</div>
      </xsl:template>
            <xsl:template match="link">
      		
      		<div id="link">
      			<a style="text-decoration: none; color: #000066;" href="index.xml">
      				<xsl:value-of select="home" /> |
      			</a>
      			<a style="text-decoration: none; color: #000066;" href="greekmenu.xml">
      			<xsl:value-of select="menu" /> |
      			</a>
      			<a style="text-decoration: none; color: #000066;" href="recipe.xml">
      			<xsl:value-of select="recipe" /> |
      			</a>
      			<a style="text-decoration: none; color: #000066;" href="finance.xml">
      			<xsl:value-of select="finance" />
      			</a>
      		</div>
      </xsl:template>
      	
	<xsl:template match="menuItems">
			
		<xsl:variable name="total" select="sum(price) * sum(productSold)" />
		
		<tr>
 		  	<td><xsl:value-of select="menuItem"/></td>
  		 	<td><xsl:value-of select="format-number(price, '$###.##')" /></td>
  		 	<td><xsl:value-of select="productSold" /></td>
  		 	<td><xsl:value-of select="format-number($total,'$###.##')" /></td>
	   	</tr>
	</xsl:template>
	
	</xsl:stylesheet>