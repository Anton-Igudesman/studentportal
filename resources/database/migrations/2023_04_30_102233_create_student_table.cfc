component {

    function up( schema, qb ) {
        queryExecute( "
             CREATE TABLE `studentrec` (
                 `id` INTEGER NOT NULL UNIQUE,
                 `firstname` VARCHAR(30) NOT NULL,
				 `lastname` VARCHAR(30) NOT NULL,
                 `email` VARCHAR(60) NOT NULL UNIQUE,
                 `gpa` FLOAT NOT NULL,
                 `createdDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                 `modifiedDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                 CONSTRAINT `pk_student_id` PRIMARY KEY (`id`)
             )
         " );
    }

    function down( schema, qb ) {
		queryExecute( "DROP TABLE `studentrec`" );
    }

}
