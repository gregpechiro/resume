component {

    function one() {
        return entityLoadByPk("me", 1);
    }

    function save(me) {
        transaction {
            entitySave(me);
        }
        return;
    }

}
