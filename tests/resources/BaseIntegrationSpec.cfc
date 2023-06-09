/**
 * Base test bundle for our application
 *
 * @see https://coldbox.ortusbooks.com/testing/testing-coldbox-applications/integration-testing
 */
component extends="coldbox.system.testing.BaseTestCase" autowire{

    /**
	 * --------------------------------------------------------------------------
	 * Dependency Injections
	 * --------------------------------------------------------------------------
	 */
	property name="migrationService" inject="MigrationService@cfmigrations";
    /**
	 * --------------------------------------------------------------------------
	 * Integration testing controls
	 * --------------------------------------------------------------------------
     * - We want the ColdBox virtual application to load once per request and get destroyed at the end of the request.
	 */
    this.loadColdBox    = true;
    this.unloadColdBox  = false;

    /**
     * Run Before all tests
     */
    function beforeAll() {
        super.beforeAll();

        // Check if migrations ran before all tests, if not, prep our database
        if ( ! request.keyExists( "migrationsRan" ) ) {
            var migrationService = getInstance( name : "MigrationService@cfmigrations", initArguments  : {
                migrationsDirectory : "/root/resources/database/migrations",
                seedsDirectory : "/root/resources/database/seeds",
                properties : {
                    datasource : "studentrecords"
                }
            });

            migrationService.runAllMigrations( "down" );
            migrationService.runAllMigrations( "up" );
            request.migrationsRan = true;
        }
    }

    /**
     * This function is tagged as an around each handler.  All the integration tests we build
     * will be automatically rolledbacked so we don't corrupt the database with our tests
     *
     * @aroundEach
     */
    function wrapInTransaction( spec ) {
        transaction action="begin" {
            try {
                arguments.spec.body( argumentCollection = arguments );
            } catch ( any e ){
                rethrow;
            } finally {
                transaction action="rollback";
            }
        }
    }

}