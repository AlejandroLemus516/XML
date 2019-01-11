<?xml version="1.0" encoding="UTF-8" ?>
	
	
	
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />
       <xsl:template match="/">
       		<html>
       		<head>
      		  <title>Recipe List</title>
      		  <link href="recipe.css"
              rel="stylesheet" type="text/css" />
              
       		</head>
       		<body>
       		  <div id="img">
              	 <img src="recipe.png" width="26%" height="25%"  />
              </div>
              <div id="title">
              	<b>Greek Recipes
              </b>
              </div> 
               
         	<div id="link">
      			<a  style="text-decoration: none; color: #993300;" href="index.xml">
      				Home |
      			</a>
      			<a style="text-decoration: none; color: #993300;"  href="greekmenu.xml">
      				Menu |
      			</a>
      			<a  style="text-decoration: none; color: #993300;" href="recipe.xml">
      				Recipe |
      			</a>
      			<a style="text-decoration: none; color: #993300;" href="finance.xml">
      				Financial Report
      			</a>
      		</div>
           <xsl:apply-templates select="recipe/recipes">
             	 <xsl:sort select="recipes/menuItem" />
           </xsl:apply-templates>
       		</body>
       		</html>
       </xsl:template>
       
       <xsl:template match="recipes">
       		
     			<div class="ingredient">
     		<div id="menuTitle">
     			<xsl:value-of select="menuItem" /> Ingredients
     		</div>
     			 <xsl:for-each select="ingredient">
     			 
     			<xsl:value-of select="." disable-output-escaping="yes" />
     			</xsl:for-each>
     			
     			</div>
     			<div class="ingredient">
     				<div id="titleInstruction">Instructions</div>
     				<div align="left">
     				<xsl:value-of select="instruction" disable-output-escaping="yes" />
     				</div>
     			</div>
       </xsl:template>
</xsl:stylesheet>