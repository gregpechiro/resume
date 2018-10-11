component {

    function all() {
        return entityLoad("reference")
    }

    function one(id) {
        return entityLoadByPk("reference", id);
    }

    function save(reference) {
        transaction {
            entitySave(reference);
        }
        return;
    }

    function delete(id) {
        var reference = entityLoadByPk("reference", id);
        transaction {
            entityDelete(reference);
        }
    }
}
