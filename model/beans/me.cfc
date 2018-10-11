component persistent=true accessors="true" {

    property name="id" fieldtype="id" generator="increment";
    property name="street" ormtype="string";
    property name="city" ormtype="string";
	property name="state" ormtype="string";
    property name="zip" ormtype="string";
    property name="phoneNumber" column="phone_number" ormtype="string";
    property name="email" ormtype="string";

}
