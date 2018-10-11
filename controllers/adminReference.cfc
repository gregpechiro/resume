component accessors="true" {

    property referenceService;
    property framework;

    function all(rc) {
        rc.references = referenceService.all();
        variables.framework.setView('admin.reference');
    }

    function one(rc) {
        rc.reference = referenceService.one(rc.id);
        rc.references = referenceService.all();
        variables.framework.setView('admin.reference');
    }

    function save(rc) {
        var reference = entityNew('reference');
        variables.framework.populate(reference);
        referenceService.save(reference);
        rc.alertSuccess = "Successfully saved reference"
        variables.framework.redirect(action = 'admin.reference', preserve = 'alertSuccess');
    }

    function delete(rc) {
        referenceService.delete(rc.id);
        rc.alertSuccess = "Successfully deleted reference"
        variables.framework.redirect(action = 'admin.reference', preserve = "alertSuccess");
    }

}
