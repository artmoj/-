<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Аттестация студентов</title>
                <style>
                    table { border-collapse: collapse; width: 70%; margin: 0 auto; }
                    th, td { border: 1px solid black; padding: 8px; text-align: center; }
                    th { background-color: #f2f2f2; }
                    .low-grade { background-color: #ffcccc; } 
                    .high-grade { background-color: #ccffcc; } 
                </style>
            </head>
            <body>
                <h2 style="text-align:center;">Аттестация студентов</h2>
                <table>
                    <tr>
                        <th>Имя студента</th>
                        <th>Предмет</th>
                        <th>Оценка</th>
                    </tr>
                    <xsl:for-each select="students/student">
                        <xsl:for-each select="subjects/subject">
                            <tr>
                                <xsl:if test="position() = 1">
                                    <td rowspan="{count(../subject)}">
                                        <xsl:value-of select="../../name" />
                                    </td>
                                </xsl:if>
                                <td><xsl:value-of select="title" /></td>
                                <td>
                                    <xsl:attribute name="class">
                                        <xsl:choose>
                                            <xsl:when test="grade &lt; 4">low-grade</xsl:when>
                                            <xsl:when test="grade &gt; 8">high-grade</xsl:when>
                                        </xsl:choose>
                                    </xsl:attribute>
                                    <xsl:value-of select="grade" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
