<cfoutput>
<div class="text-center card shadow-sm bg-light border border-5 border-white">
	<div class="card-body">


		<h1 class="display-2 fw-bold">
			#prc.welcomeMessage#
		</h1>

		<div class="col-lg-6 mx-auto">

			</div class="table-container">
				#html.table( data: prc.studentList, class : "table table-striped", includes: "id,lastname,firstname,gpa,email", excludes: "createdDate,modifiedDate" )#
			<div>

		</div>
	</div>
</div>



</div>

</cfoutput>
