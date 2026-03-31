<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
        <head>
            <title>Employee Directory</title>
            <style>
                body { font-family: Arial, sans-serif; margin: 40px; }
                table { border-collapse: collapse; width: 100%; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
                th, td { border: 1px solid #dddddd; text-align: left; padding: 12px; }
                th { background-color: #4CAF50; color: white; }
                tr:nth-child(even) { background-color: #f9f9f9; }
                tr:hover { background-color: #f1f1f1; }
            </style>
        </head>
        <body>
            <h2>Company Employee Directory</h2>
            <table>
                <tr>
                    <th>Employee ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Designation</th>
                    <th>Salary ($)</th>
                </tr>
                
                <xsl:for-each select="employees/employee">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="department"/></td>
                        <td><xsl:value-of select="designation"/></td>
                        <td><xsl:value-of select="salary"/></td>
                    </tr>
                </xsl:for-each>
                
            </table>
        </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>