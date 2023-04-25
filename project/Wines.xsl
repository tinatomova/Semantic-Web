<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body style="background-image:url('background_light.jpg');background-attachment: fixed">
    <h1 style="text-align: center; margin-top:12%; margin-bottom:7%; font-size:48px">Каталог на вина</h1>

    <xsl:for-each select="Catalog/Wine">      
      <h1 style="margin-left: 15%; margin-bottom:5%; font-size:36px"><xsl:value-of select="GeneralInfo/Name"/></h1>
             
      <div style="width:45%; height:66%; float:left; text-align: center;">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="image/@href"/>
          </xsl:attribute>
          <xsl:attribute name="height">90%</xsl:attribute>
        </img>
      </div>
        
      <div style="width: 55%; height:66%; float:right;">
        <h2 style="font-size:30px">Произход</h2>        
          <h3 style="font-size:26px; color:#8c654a">Държава</h3>
            <p style="font-size:20px"><xsl:value-of select="GeneralInfo/Origin/Country" /></p>         
          <h3 style="font-size:26px; color:#8c654a">Област</h3>
            <p style="font-size:20px"><xsl:value-of select="GeneralInfo/Origin/Area" /></p>
            <xsl:variable name="reg_ref" select="GeneralInfo/Origin/@region"/>
            <p style="font-size:20px"><xsl:value-of select="../Regions/Region[@id=$reg_ref]/@name"/></p>        
          <h3 style="font-size:26px; color:#8c654a">Винарна</h3>
            <xsl:variable name="win_ref" select="@winery"/>
            <p style="font-size:20px"><xsl:value-of select="../Wineries/Winery[@id=$win_ref]/@name"/></p>
      </div>
          
      <h3 style="margin-top:5%; margin-left:10%; font-size:26px; color:#8c654a">Тероар</h3>
      <p style="margin-left:10%; margin-right:10%; margin-bottom:3%; font-size:20px"><xsl:value-of select="GeneralInfo/Origin/Terroir" /></p>


      <div style="height:10%;background-image:url('background.png');background-attachment: fixed"/>
      <div style="background-image:url('background.png');background-attachment: fixed">
        <h2 style="text-align: center;color:#8c654a;font-size:30px; matgin-bottom:-4px">Обща информация</h2>
      </div>
      <div style="width:10%; height:20%; float:left; background-image:url('background.png');background-attachment: fixed"/>
      <div style="width:10%; height:20%; float:right;background-image:url('background.png');background-attachment: fixed"/>
      <div style="width: 20%; height: 20%; float:left; text-align:center;background-image:url('background.png');background-attachment: fixed">
        <h3 style="color:#a88665;font-size:26px">Сорт</h3>
            <p style="color:#ebe8e6;font-size:20px"><xsl:value-of select="TypeInfo/Type" /></p>
        </div>
        <div style="width: 20%; height: 20%; float:left; text-align:center;background-image:url('background.png');background-attachment: fixed">
          <h3 style="color:#a88665;font-size:26px">Цвят</h3>
            <p style="color:#ebe8e6;font-size:20px"><xsl:value-of select="TypeInfo/Color" /></p>
        </div>
        <div style="width: 20%; height: 20%; float:left; text-align:center;background-image:url('backgroun.png');background-attachment: fixed">
          <h3 style="color:#a88665;font-size:26px">Реколта</h3>
            <p style="color:#ebe8e6;font-size:20px"><xsl:value-of select="TypeInfo/Year" /></p>
        </div>
        <div style="width: 20%; height: 20%; float:right; text-align:center;background-image:url('background.png');background-attachment: fixed">
          <h3 style="color:#a88665;font-size:26px">Опаковка</h3>
            <p style="color:#ebe8e6;font-size:20px"><xsl:value-of select="TypeInfo/Package" /></p>
        </div>
                 
        <div style="width:10%; height:20%; float:left;background-image:url('background.png');background-attachment: fixed"/>
        <div style="width:10%; height:20%; float:right;background-image:url('background.png');background-attachment: fixed"/>
        <div style="width: 20%; height: 20%; float:left; text-align:center;background-image:url('background.png');background-attachment: fixed">
          <h2 style="color:#a88665;font-size:26px">Алкохолно съдържание</h2>
            <p style="color:#ebe8e6;font-size:20px"><xsl:value-of select="Alcohol" /></p>
        </div>
        <div style="width: 20%; height: 20%; float:left; text-align:center;background-image:url('background.png');background-attachment: fixed">
          <h2 style="color:#a88665;font-size:26px">Оценка</h2>
            <p style="color:#ebe8e6;font-size:20px"><xsl:value-of select="Rating" /></p>
        </div>   
        <div style="width: 20%; height: 20%; float:right; text-align:center;background-image:url('background.png');background-attachment: fixed">
          <h2 style="color:#a88665;font-size:26px">Цена</h2>
            <p style="color:#ebe8e6;font-size:20px"><xsl:value-of select="Price" /></p>
        </div>
        <div style="width: 20%; height: 20%; float:right;background-image:url('background.png');background-attachment: fixed"></div>
        <div style="height:30%; background-image:url('background.png');background-attachment: fixed"/>
        <div style="height:16%;background-image:url('background.png');background-attachment: fixed"/>

        <h2 style="margin-top:5%; text-align: center; font-size:30px">Допълнителна информация</h2>
          <h3 style="margin-left:10%; margin-right:10%; font-size:26px; color:#8c654a">Описание на сомелиера</h3>
            <p style="margin-left:10%; margin-right:10%; font-size:20px"><xsl:value-of select="AdditionalInfo/SommelierDescription/Aroma" /></p>
            <p style="margin-left:10%; margin-right:10%; font-size:20px"><xsl:value-of select="AdditionalInfo/SommelierDescription/Body" /></p>
            <p style="margin-left:10%; margin-right:10%; font-size:20px"><xsl:value-of select="AdditionalInfo/SommelierDescription/Aftertaste" /></p>
          <h3 style="margin-left:10%; margin-right:10%; font-size:26px; color:#8c654a">Съчетание с храни:</h3>
            <p style="margin-left:10%; margin-right:10%; font-size:20px"><xsl:value-of select="AdditionalInfo/ConsumeWith" /></p>
          <h3 style="margin-left:10%; margin-right:10%; font-size:26px; color:#8c654a">История</h3>
            <p style="margin-left:10%; margin-right:10%; margin-bottom:13%; font-size:20px"><xsl:value-of select="AdditionalInfo/About" /></p>
    </xsl:for-each>    
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>