<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" indent="yes"/>
	<!-- Template to display all employee details -->
	<xsl:template match="employees">
		<html>
			<head>
				<title>ADSE Employee Details</title>
				<!-- Link to the external employees CSS file -->
				<link rel="stylesheet" type="text/css" href="../css/employees.css"/>
			</head>
			<body>
				<h1 class="page-heading">ADSE 2509 Employee Information</h1>
				<!--Use a table to display the employee details -->
				<table class ="data-table" border="1">
					<tr> <!-- table heading-->
						<th>Name</th>
						<th>Age</th>
						<th>Department</th>
						<th>Language</th>
						<th>Salary</th>
					</tr>
					<!-- Display each employee's detail in a single row -->
					<xsl:for-each select="employee">
						<tr>
							<td>
								<xsl:value-of select="name"/> <!-- Employee's name -->
							</td>
							<td>
								<xsl:value-of select="age"/> <!-- Employee's age -->
							</td>
							<td>
								<xsl:value-of select="department"/> <!-- Employee's department -->
							</td>
							<td>
								<xsl:value-of select="language"/> <!-- Employee's language -->
							</td>
							<td>
								<xsl:value-of select="salary"/> <!-- Employee's salary -->
							</td>
						</tr>
					
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>