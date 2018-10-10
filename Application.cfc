component extends=framework.one {
	this.name='resume';

	this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0);

	this.datasource='resume';
	this.ormEnabled = true;
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,2,0,0);

	this.ormsettings = {
        cfclocation="./model/beans",
        dbcreate="update",
        dialect="MySQL",
        logsql="true"
    }

	this.invokeImplicitAccessor = true;

	variables.framework = {
		generateSES = true,
		routes = [
			{"$GET/rest/experience/:id/$" = "/experience/restOne/id/:id"},
			{"$GET/rest/experience/$" = "/experience/restAll"},
			{"$GET/admin/experience/:id/$" = "/adminExperience/one/id/:id"},
			{"$POST/admin/experience/$" = "/adminExperience/save"},
			{"$POST/admin/experience/:id/$" = "/adminExperience/delete/id/:id"},
			{"$GET/admin/experience/$" = "/adminExperience/all"},
			{"$GET/admin/user/:id/$" = "/adminUser/one/id/:id"},
			{"$POST/admin/user/$" = "/adminUser/save"},
			{"$POST/admin/user/:id/$" = "/adminUser/delete/id/:id"},
			{"$GET/admin/user/$" = "/adminUser/all"},
			{"$GET/login/$" = "/user/login"},
			{"$GET/logout/$" = "/security/logout"}
		]
    };

	public function setupSession() {
        controller('security.newSession');
    }

	public function setupRequest() {
        if(structKeyExists(url, "init")) { // use index.cfm?init to reload ORM
            setupApplication();
            ormReload();
            location(url="index.cfm",addToken=false);
        }

        controller("security.authorize");

    }

	function before(rc) {
		rc.baseUrl = #getDirectoryFromPath(cgi.SCRIPT_NAME)#;
	}

}
