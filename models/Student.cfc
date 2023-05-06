/**
 * I am a new Model Object
 */
component accessors="true"{

	// Properties
	property name="id" type="numeric";
	property name="firstname" type="string";
	property name="lastname" type="string";
	property name="email" type="string";
	property name="gpa" type="numeric";
	property name="createdDate" type="date";
	property name="modifiedDate" type="date";


	/**
	 * Constructor
	 */
	Student function init(){

		return this;
	}

	boolean function isLoaded(){
		return ( !isNull( variables.id ) && len( variables.id ));
	}


}