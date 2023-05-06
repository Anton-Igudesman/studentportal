<cfoutput>
	<div class="vh-100 d-flex justify-content-center align-items-center">
		<div class="container">
			<div class="d-flex justify-content-center">
				<div class="col-8">
					<div class="card">
						<div class="card-header">
							Student Registration
						</div>
						<div class="card-body">
							#html.startForm( action : "insert_action", method="POST"  )#

								#html.inputField(
									name : "id",
									class : "form-control",
									placeholder : "696123",
									groupWrapper : "div class='mb-3'",
									label : "Student ID",
									labelClass : "form-label"

								)#

								#html.inputField(
									name : "firstname",
									class : "form-control",
									placeholder : "Robert",
									groupWrapper : "div class='mb-3'",
									label : "First Name",
									labelClass : "form-label"

								)#

								#html.inputField(
									name : "lastname",
									class : "form-control",
									placeholder : "Tinkington",
									groupWrapper : "div class='mb-3'",
									label : "Last Name",
									labelClass : "form-label"

								)#

								#html.emailField(
									name : "email",
									class : "form-control",
									placeholder : "student@csu.edu",
									groupWrapper : "div class='mb-3'",
									label : "Email",
									labelClass : "form-label"

								)#

								#html.inputField(
									name : "gpa",
									class : "form-control",
									placeholder: "4.00",
									groupWrapper : "div class='mb-3'",
									label : "GPA",
									labelClass : "form-label"

								)#

								<div class="form-group">
									<button type="submit" class="btn btn-primary">Register</button>
								</div>
							#html.endForm()#
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</cfoutput>