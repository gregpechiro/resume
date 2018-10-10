component accessors="true" {


    function init(fw) {
        variables.fw = fw;
    }

    function checkAuthorization(rc) {
        rc.authenticated = structKeyExists(session, "userid");
        if(rc.authenticated) {
            rc.user = variables.user.get(session.userid);
        }
    }

}
