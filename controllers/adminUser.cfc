component accessors="true" {

    property userService;
    property framework;

    function all(rc) {
        rc.users = userService.all();
        variables.framework.setView('admin.user');
    }

    function one(rc) {
        rc.user = userService.one(rc.id);
        rc.users = userService.all();
        variables.framework.setView('admin.user');
    }

    function save(rc) {
        var user = entityNew('user');
        if (StructKeyExists(rc, "id") && rc.password == '') { // existing user, no password input, reuse existin password
            user = userService.one(rc.id);
            rc.password = user.password;
        } else { // new user or new password, hash
            rc.password = hash(rc.password, 'SHA-512');
        }
        variables.framework.populate(user);
        userService.save(user);
        rc.alertSuccess = "Successfully saved user"
        variables.framework.redirect(action = 'admin.user', preserve = 'alertSuccess');
    }

    function delete(rc) {
        userService.delete(rc.id);
        rc.alertSuccess = "Successfully deleted user"
        variables.framework.redirect(action = 'admin.user', preserve = "alertSuccess");
    }

}
