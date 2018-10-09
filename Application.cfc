component{
	this.name='resume';
	this.datasource='resume';
	this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0);
	this.ormEnabled = true;
	this.ormSettings = { logsql : true };
	this.invokeImplicitAccessor = true;

	function onApplicationStart() {
		return true;
    }

	function onRequestStart(string targetPage){
		if(structKeyExists(url,'reload')){
			onApplicationStart();
		}
	 }

}
