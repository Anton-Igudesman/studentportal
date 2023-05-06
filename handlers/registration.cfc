component {

	property name="studentService" inject="StudentService";

	function create( event, rc, prc){
		//prc.newStudent = studentService.create( populateModel( "Student" ) );

		// flash.put(
		// 	"notice",
		// 	{
		// 		type: "success",
		// 		message: "The student #encodeForHTML( prc.newStudent.getfirstName() )# has been created!"
		// 	}
		// );

		//relocate( "/" );
		// var student = studentService.create(
		// 	rc.id,
		// 	rc.firstname,
		// 	rc.lastname,
		// 	rc.email,
		// 	rc.gpa
		// );

		// getInstance( "messageBox@cbmessagebox")
		// 	.success( "The student #encodeForHTML(rc.firstname)# was created!" );

		// relocate(uri = "/");
	}
}

