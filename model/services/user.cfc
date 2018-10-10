component {

    function all() {
        return entityLoad("user")
    }

    function one(id) {
        transaction {
            return entityLoadByPk("user", id);
        }
    }

    function save(user) {
        transaction {
            entitySave(user);
        }
        return;
    }

    function delete(id) {
        var user = entityLoadByPk("user", id);
        transaction {
            entityDelete(user);
        }
    }

    function authenticate(string username, string password) {
        password = hash(password, 'SHA-512');
        var user = entityLoad("user", {username=#username#, password=#password#},true);
        if(!isNull(user)) {
            session.auth.userid = user.getId();
            session.auth.username = user.getUserName();
            return user;
        }
    }
}
