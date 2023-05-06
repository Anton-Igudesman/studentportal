<html>
	<head>
	<title>Student Records</title>
	</head>

	<body>

	<cfquery name="getStudents" datasource="heroku_a82607e5bd0ea3f">
		SELECT *
		FROM studentrec
		WHERE firstName=<cfqueryparam value="#Form.firstName#"
	  CFSQLType="CF_SQL_VARCHAR">
	  </cfquery>
	  <h4>Student Records</h4>
	  <cfoutput query="getStudents">
		#ID#
	  	#firstName#
	  	#lastName#
	  	#GPA#
		#email#
		#createdDate#<br>
	  </cfoutput>

	</body>
	</html>