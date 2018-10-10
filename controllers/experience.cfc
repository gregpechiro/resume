component accessors="true" {

    property experienceService;
    property beanFactory;

    function init( any fw ) {
        variables.fw = fw;
        return this;
    }

    function restAll() {
        var resultData = experienceService.all();
        variables.fw.renderData().data(resultData).type("json");
    }

    function restOne(rc) {
        var resultData = experienceService.one(rc.id);
        variables.fw.renderData().data( resultData ).type("json");
    }

}
