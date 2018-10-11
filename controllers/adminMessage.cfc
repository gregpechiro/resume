component accessors="true" {

    property messageService;
    property framework;

    function all(rc) {
        rc.messages = messageService.all();
        variables.framework.setView('admin.message');
    }

    function one(rc) {
        rc.message = messageService.one(rc.id);
        rc.messages = messageService.all();
        variables.framework.setView('admin.message');
    }

    function save(rc) {
        var message = entityNew('message');
        variables.framework.populate(message);
        message.opened = false;
        message.timestamp = now().getTime();
        messageService.save(message);
        rc.alertSuccess = "Successfully saved message"
        variables.framework.redirect(action = 'admin.message', preserve = 'alertSuccess');
    }

    function delete(rc) {
        messageService.delete(rc.id);
        rc.alertSuccess = "Successfully deleted message"
        variables.framework.redirect(action = 'admin.message', preserve = "alertSuccess");
    }

    function restOne(rc) {
        var message = messageService.one(rc.id);
        message.opened = true;
        messageService.save(message);
        variables.framework.renderData().data(message).type("json");
    }

}
