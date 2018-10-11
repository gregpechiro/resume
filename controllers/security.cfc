component accessors="true" {

    property userService;
    property framework;


    function newSession( rc ) {
        // set up the user's session
        session.auth = {};
        session.auth.isLoggedIn = false;
        session.auth.isAdmin = false;
        session.auth.userId = '0';
        session.auth.username = 'Guest';
    }

    function authorize( rc ) {
        // check to make sure the user is logged on
        if ( !session.auth.isLoggedIn &&
                not listfindnocase( 'user.login', variables.framework.getFullyQualifiedAction() ) &&
                not listfindnocase( 'security.authenticate', variables.framework.getFullyQualifiedAction() ) &&
                not listfindnocase( 'main.error', variables.framework.getFullyQualifiedAction() ) ) {
            variables.framework.redirect('login');
            return;
        }
        if (!session.auth.isAdmin && FindNoCase('admin', variables.framework.getFullyQualifiedAction())) {
            rc.alertError = "You are unauthorized to view this content";
            variables.framework.redirect('login', 'alertError');
        }
    }

    function authenticate(rc) {
        rc.loginerrors = StructNew();
        if(!len(trim(rc.username))) {
            rc.loginerrors.username = "*Username is required";
        }

        if(!len(trim(rc.password))) {
            rc.loginerrors.password = "*Password is required";
        }

        if(StructCount(rc.loginerrors)) {
            variables.framework.redirect("login", "username,loginerrors");
        }

        rc.user = variables.userService.authenticate(rc.username, rc.password);

        if(!structKeyExists(rc, "user")) {
            rc.alertError = "Invalid username or password";
            variables.framework.redirect("login", "username,alertError");
        } else {
            //Result is a user entity, but we only persist the ID
            session.auth.isloggedin = true;
            session.auth.userid = rc.user.getId();
            session.auth.isAdmin = rc.user.role == "ROLE_ADMIN";
            rc.alertSuccess = "Welcome";
            if (session.auth.isAdmin) {
                variables.framework.redirect("admin.me", 'alertSuccess');
            }
            variables.framework.redirect("main.default", 'alertSuccess');

        }
        session.auth.isloggedin = true;
    }

    function logout(rc) {
        this.newSession();
        rc.alertSuccess = "You are now logged out";
        variables.framework.redirect("login", 'alertSuccess');
    }

}
