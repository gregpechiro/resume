component persistent=true accessors="true" {

    property name="id" fieldtype="id" generator="increment";
    property name="firstName" column="first_name" ormtype="string";
    property name="lastName" column="last_name" ormtype="string";
    property name="title" ormtype="string";
    property name="yearsKnown" column="years_known" ormtype="integer";
    property name="phoneType" column="phone_type" ormtype="string";
    property name="phoneNumber" column="phone_number" ormtype="string";

}
