<?xml version="1.0" encoding="UTF-8" ?>
	
	
	<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
		
	  <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />
      
      <xsl:template match="/">
      		<html>
       			<head>
       				<title>Greek Menu Home Page</title>
        			<link href="index.css"
              		rel="stylesheet" type="text/css" />
       			</head>
       			<body>
       				<div id="picture">
       					<img src="greekhompage.png" />
       				</div>
       				<xsl:apply-templates select="index/links/title" />
       				<xsl:apply-templates select="index/links/link" />
       				<div id="slideshow">
       				<img src="greekfood2.png" name="slide" />
							<script src="slideshow.js">
       					</script>
       				</div>
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
      			<a style="text-decoration: none; color: #993300;" href="index.xml">
      				<xsl:value-of select="home" /> |
      			</a>
      			<a style="text-decoration: none; color: #993300;" href="greekmenu.xml">
      			<xsl:value-of select="menu" /> |
      			</a>
      			<a style="text-decoration: none; color: #993300;" href="recipe.xml">
      			<xsl:value-of select="recipe" /> |
      			</a>
      			<a style="text-decoration: none; color: #993300;" href="finance.xml">
      			<xsl:value-of select="finance" />
      			</a>
      		</div>
      </xsl:template>
	</xsl:stylesheet>