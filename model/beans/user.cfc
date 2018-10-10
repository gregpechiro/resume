component persistent=true accessors="true" {

    property name="id" fieldtype="id" generator="increment";
    property name="username" ormtype="string";
    property name="password" column="cf_password" ormtype="string";
    property name="role" ormtype="string";

}
