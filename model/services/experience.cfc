component {

    function all() {
        return entityLoad("experience")
    }

    function one(id) {
        return entityLoadByPk("experience", id);
    }

    function save(experience) {
        transaction {
            entitySave(experience);
        }
        return;
    }

    function delete(id) {
        var exp = entityLoadByPk("experience", id);
        transaction {
            entityDelete(exp);
        }
    }
}
