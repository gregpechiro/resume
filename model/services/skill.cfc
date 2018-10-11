component {

    function all() {
        return entityLoad("skill")
    }

    function one(id) {
        return entityLoadByPk("skill", id);
    }

    function save(skill) {
        transaction {
            entitySave(skill);
        }
        return;
    }

    function delete(id) {
        var skill = entityLoadByPk("skill", id);
        transaction {
            entityDelete(skill);
        }
    }
}
