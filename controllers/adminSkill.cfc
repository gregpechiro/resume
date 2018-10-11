component accessors="true" {

    property skillService;
    property framework;

    function all(rc) {
        rc.skills = skillService.all();
        variables.framework.setView('admin.skill');
    }

    function one(rc) {
        rc.skill = skillService.one(rc.id);
        rc.skills = skillService.all();
        variables.framework.setView('admin.skill');
    }

    function save(rc) {
        var skill = entityNew('skill');
        variables.framework.populate(skill);
        skillService.save(skill);
        rc.alertSuccess = "Successfully saved skill"
        variables.framework.redirect(action = 'admin.skill', preserve = 'alertSuccess');
    }

    function delete(rc) {
        skillService.delete(rc.id);
        rc.alertSuccess = "Successfully deleted skill"
        variables.framework.redirect(action = 'admin.skill', preserve = "alertSuccess");
    }

}
