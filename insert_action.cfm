<html>
	<head> <title>Input form</title> </head>
	<body>


	<!--- Insert the new record --->
	<cfinsert datasource="heroku_a82607e5bd0ea3f" tablename="studentrecords">
	<h1>Student Added</h1>
	<cfoutput> You have added #Form.FirstName# #Form.Lastname# to the student database.
	</cfoutput>
	</body>
	</html>