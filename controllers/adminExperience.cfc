component accessors="true" {

    property experienceService;
    property framework;

    function all(rc) {
        rc.experiences = experienceService.all();
        variables.framework.setView('admin.experience');
    }

    function one(rc) {
        rc.experience = experienceService.one(rc.id);
        rc.experiences = experienceService.all();
        variables.framework.setView('admin.experience');
    }

    function save(rc) {
        var exp = entityNew('experience');
        variables.framework.populate(exp);
        experienceService.save(exp);
        rc.alertSuccess = "Successfully saved experience"
        variables.framework.redirect(action = 'admin.experience', preserve = 'alertSuccess');
    }

    function delete(rc) {
        experienceService.delete(rc.id);
        rc.alertSuccess = "Successfully deleted experience"
        variables.framework.redirect(action = 'admin.experience', preserve = "alertSuccess");
    }

}
