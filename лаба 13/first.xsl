<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Sorted Groceries</title>
                <style>
                    h2{text-align: center;}
                    table { border-collapse: collapse; width: 70%; margin: 0 auto; }
                    th, td { border: 1px solid black; padding: 8px; text-align: center; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>GROCERIES CATALOG</h2>
                <table>
                    <tr bgcolor="#f2f2f2">
                        <th>Name</th>
                        <th>Price</th>
                        <th>Delivered</th>
                    </tr>
                    <xsl:for-each select="groceries/product">
                        <xsl:sort select="number(translate(price, ' BYN', ''))" order="ascending"
                            data-type="number" />
                        <tr>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="price" />
                            </td>
                            <td>
                                <xsl:value-of select="delivered" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>




   