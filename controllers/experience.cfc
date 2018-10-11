component accessors="true" {

    property experienceService;
    property framework;

    function restAll() {
        var resultData = experienceService.all();
        variables.framework.renderData().data(resultData).type("json");
    }

    function restOne(rc) {
        var experience = experienceService.one(rc.id);
        variables.framework.renderData().data(experience).type("json");
    }

}
