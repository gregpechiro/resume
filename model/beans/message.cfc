component persistent=true accessors="true" {

    property name="id" fieldtype="id" generator="increment";
    property name="name" ormtype="string";
    property name="email" ormtype="string";
	property name="subject" ormtype="string";
    property name="body" ormtype="string";
    property name="timestamp" ormtype="integer";
	property name="opened" ormtype="boolean";

}
