<cfcomponent rest="true" restpath="/experience">
    <cffunction name="experienceGetOne" access="remote" restpath="{id}" produces="application/json" returntype="String" httpmethod="GET">
        <cfargument name="id" required="true" restargsource="Path" type="numeric"/>
        <!--- <cfset experience = ormExecuteQuery( "select description, education, name FROM experience WHERE id = :id", {id:#id#}, true)> --->
        <cfset json = SerializeJSON(experience)>
        <cfreturn json>

        <!---<cfquery name="experience" datasource="resume">
            select description, education, name from experience where id = #arguments.id#
        </cfquery>
        <cfif experience.recordCount GT 0>
            <cfset queryAsArray = DeSerializeJSON(SerializeJSON(experience, "STRUCT"))>
            <cfset json = SerializeJSON(queryAsArray[1])>
            <cfreturn json>
        <cfelse>
            <cfreturn JavaCast( "null", 0 )>
        </cfif>--->

    </cffunction>
</cfcomponent>
