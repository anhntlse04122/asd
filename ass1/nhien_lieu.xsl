<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : nhien_lieu.xsl
    Created on : September 21, 2017, 8:30 AM
    Author     : ChinoChino
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="rss/channel/title" />
                </title>
            </head>
            <body>
                <div>
                    <xsl:variable name="getLink">
                        <xsl:value-of select="rss/channel/link"/>
                    </xsl:variable>
                    <a href= "{$getLink}"> 
                        <h1>
                            <xsl:value-of select="rss/channel/description"></xsl:value-of>
                        </h1>
                    </a>
                </div>
                <div>
                    <xsl:value-of select="rss/channel/language" /> - <xsl:value-of select="rss/channel/generator" /> 
                </div>
                <div>
                    <xsl:value-of select="rss/channel/pubDate" /> - <xsl:value-of select="rss/channel/lastBuildDate" />
                </div>
                <!--start item-->
                <xsl:for-each select="rss/channel/item"> 
                     <xsl:variable name="getLink1">
                         <xsl:value-of select="link"/>
                     </xsl:variable>
                     <a href= "{$getLink1}"> 
                        <h4> <xsl:value-of select="title" /> </h4> 
                     </a>
                    <p></p>
                    
                    <xsl:value-of select="description" disable-output-escaping="yes" />
                    <p></p>
                    
                     pubDate : <xsl:value-of select="pubDate" />
                     <p></p>
                     
                     <xsl:variable name="getLink2">
                                <xsl:value-of select="guid"/>
                     </xsl:variable>
                     <a href= "{$getLink2}"> 
                      xem them >>
                     </a>
<!--                    <table>
                        <tr>
                            <td rowspan ="3">
                                <xsl:value-of select="description" disable-output-escaping="yes" />
                            </td>
                            
                            <td>
                                <xsl:variable name="getLink1">
                                    <xsl:value-of select="link"/>
                                </xsl:variable>
                                <a href= "{$getLink1}"> 
                                    <h4>
                                        <xsl:value-of select="title" />
                                    </h4> 
                                </a>
                            
                            </td>
                        </tr>
                        <tr>
                            <td>
                                pubDate : <xsl:value-of select="pubDate" />
                            </td>
                        </tr>
                        <tr>
                            <xsl:variable name="getLink2">
                                <xsl:value-of select="guid"/>
                            </xsl:variable>
                            <a href= "{$getLink2}"> 
                                <h4>
                                    xem them >>
                                </h4> 
                            </a>
                        </tr>
                    </table>-->
                </xsl:for-each>
                <!--end item-->
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
