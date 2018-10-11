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
			{"$GET/admin/skill/:id/$" = "/adminSkill/one/id/:id"},
			{"$POST/admin/skill/$" = "/adminSkill/save"},
			{"$POST/admin/skill/:id/$" = "/adminSkill/delete/id/:id"},
			{"$GET/admin/skill/$" = "/adminSkill/all"},
			{"$GET/admin/reference/:id/$" = "/adminReference/one/id/:id"},
			{"$POST/admin/reference/$" = "/adminReference/save"},
			{"$POST/admin/reference/:id/$" = "/adminReference/delete/id/:id"},
			{"$GET/admin/reference/$" = "/adminReference/all"},
			{"$GET/admin/rest/message/:id/$" = "/adminMessage/restOne/id/:id"},
			{"$GET/admin/message/:id/$" = "/adminMessage/one/id/:id"},
			{"$POST/admin/message/$" = "/adminMessage/save"},
			{"$POST/admin/message/:id/$" = "/adminMessage/delete/id/:id"},
			{"$GET/admin/message/$" = "/adminMessage/all"},
			{"$GET/admin/me/$" = "/adminMe/one"},
			{"$POST/admin/me$" = "adminMe/save"},
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
