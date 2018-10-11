component accessors="true" {

    property meService;
    property framework;

    function one(rc) {
        rc.me = meService.one();
        variables.framework.setView('admin.me');
    }

    function save(rc) {
        var me = entityNew('me');
        variables.framework.populate(me);
        meService.save(me);
        rc.alertSuccess = "Successfully saved me"
        variables.framework.redirect(action = 'admin.me', preserve = 'alertSuccess');
    }

}
