component accessors="true" {

    property messageService;
    property framework;

    function send(rc) {
        var message = entityNew('message');
        variables.framework.populate(message);
        rc.messageErrors = StructNew();
        if(!len(trim(message.name))) {
            rc.messageErrors.name = "*Name is required";
        }
        if(!len(trim(message.email))) {
            rc.messageErrors.email = "*Email is required";
        }
        if(!len(trim(message.subject))) {
            rc.messageErrors.subject = "*Subject is required";
        }
        if(!len(trim(message.body))) {
            rc.messageErrors.body = "*Body is required";
        }
        if(StructCount(rc.messageErrors)) {
            rc.message = message;
            rc.alertError = "Error sending message";
            variables.framework.redirect("main.default", "message,messageErrors,alertError");
        }

        message.opened = false;
        message.timestamp = now().getTime();
        messageService.save(message);
        rc.alertSuccess = "Successfully sent message"
        variables.framework.redirect(action = 'main.default', preserve = 'alertSuccess');
    }

}
