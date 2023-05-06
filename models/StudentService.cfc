/**
 * I am a new Model Object
 */
component singleton accessors="true"{

	// Properties


	/**
	 * Constructor
	 */
	StudentService function init(){

		return this;
	}

	/**
	 * Create a new empty Student
	 */
	Student function new() provider="Student"{
	}

	/**
 * Create a new user
 *
 * @student The user to persist
 *
 * @returns The persisted user
 */
Student function create( required student ){

    var now = now();
    arguments.student
        .setModifiedDate( now )
        .setCreatedDate( now )

    queryExecute(
        "
            INSERT INTO `studentrecords` (`id`, `firstname`, `lastname`, `email`, `gpa`, `createdDate`, `modifiedDate`)
            VALUES (?, ?, ?, ?, ?, ?, ?)
        ",
        [
			arguments.student.getId(),
            arguments.student.getFirstname(),
            arguments.student.getLastname(),
			arguments.student.getEmail(),
			arguments.student.getGpa(),
            { value : arguments.student.getCreatedDate(), type : "timestamp" },
            { value : arguments.student.getModifiedDate(), type : "timestamp" }
        ],
        { result = "local.result" }
    );

    //return arguments.user.setId( result.generatedKey );
}

	/**
	 * list
	 */
	function list(){
		return queryExecute(
			"SELECT `id`, `lastname`, `firstname`, `gpa`, `email` FROM `studentrecords` ",
			{},
			{ returntype = "array" }
			);
	}


}