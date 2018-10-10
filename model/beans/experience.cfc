component persistent=true accessors="true" {

    property name="id" fieldtype="id" generator="increment";
    property name="year" ormtype="string";
    property name="name" ormtype="string";
	property name="city" ormtype="string";
    property name="state" ormtype="string";
    property name="title" ormtype="string";
    property name="description" ormtype="string";
    property name="education" ormtype="string";
    property name="sort" ormtype="integer";

}
