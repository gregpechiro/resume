component persistent=true accessors="true" {

    property name="id" fieldtype="id" generator="increment";
    property name="category" ormtype="string";
    property name="name" ormtype="string";
	property name="link" ormtype="string";

}
