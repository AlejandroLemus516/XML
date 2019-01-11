<?xml version="1.0" encoding="UTF-8" ?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />
	
 <xsl:template match="/">
     <html>
       <head>
        <title>Greek Menu</title>
        <link href="menu.css"
              rel="stylesheet" type="text/css" />
       </head>
       <body>
         <div id="header">		
          <img src="menu.png" />
         </div>
         	 <div id="mainTitle">
         	 	The Greek Food Menu
         	 </div>
         
         	<div id="link">
      			<a style="text-decoration: none; color: white;"  href="index.xml">
      				Home |
      			</a>
      			<a style="text-decoration: none; color: white;" href="greekmenu.xml">
      				Menu |
      			</a>
      			<a style="text-decoration: none; color: white;" href="recipe.xml">
      				Recipe |
      			</a>
      			<a style="text-decoration: none; color: white;" href="finance.xml">
      				Financial Report
      			</a>
      		</div>
         
            <xsl:apply-templates select="menuInfo/menu/menuItems/menuItem">
              <xsl:sort select="menuItem/@course" />
           </xsl:apply-templates>
       </body>
           
    </html>
   </xsl:template>
   
   <xsl:template match="menuItem">
   	<div id="greekcourse">
  		<xsl:value-of select="@course" />
  	</div>
      <div class="menu">
        <div id="title">
      		<xsl:value-of select="menuId/itemName" />
        </div>
        
        <div class="font">
        	Description:
  			<div id="summary">
        		<xsl:value-of select="menuId/description" />
        		
			</div>
		</div>
		<div class="font">
        	Price:
        		<xsl:value-of select="menuId/price" />
     		<br/>
     	</div>
     	<div class="font">
        	Rating:
        		<xsl:value-of select="menuId/rating" />
        </div>	
      </div> 
   </xsl:template>
</xsl:stylesheet>