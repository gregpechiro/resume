component {

    function all() {
        return entityLoad("message")
    }

    function one(id) {
        return entityLoadByPk("message", id);
    }

    function save(message) {
        transaction {
            entitySave(message);
        }
        return;
    }

    function delete(id) {
        var message = entityLoadByPk("message", id);
        transaction {
            entityDelete(message);
        }
    }
}
