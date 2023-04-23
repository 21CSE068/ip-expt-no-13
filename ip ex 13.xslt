<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
    <html>  
         <body style="background-color:blue;"> 
            <center> 
            <h2>EMPLOYEE DETAILS</h2>   
            <table border = "2">    
                  <th>NAME</th>   
                  <th>SALARY</th> 
                  
              <xsl:for-each select="employees/employee"> 
                  <xsl:if test="salary > 5000">
                      <tr>
                       <td><xsl:value-of select = "name"/></td>   
                       <xsl:value-of select = "salary"/></td>      
                      </tr>  
                       </xsl:if>
                        <xsl:if test="salary<= 5000">
                        <tr>     
                        <td><xsl:value-of select = "name"/></td>   
                        <td><xsl:value-of select = "salary"/></td>   
                        </tr>   
                        </xsl:if>
               </xsl:for-each>   
            </table> 
             </center>  
         </body>   
      </html>   
   </xsl:template>    
</xsl:stylesheet>  