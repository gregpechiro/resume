<cfoutput>
    <script src="#rc.baseURL#static/js/notify.min.js"></script>
    <script src="#rc.baseURL#static/js/notify-metro.js"></script>
    <script src="#rc.baseURL#static/js/notification.js"></script>
    <cfif StructKeyExists(rc, "alert")>
        <script type="text/javascript">
    		$(document).ready(function() {
    			$.Notification.autoHideNotify('info', 'top right', '#rc.alert#');
    			console.log('alert');
    		});
        </script>
    <cfelseif StructKeyExists(rc, "alertError")>
        <script type="text/javascript">
    		$(document).ready(function() {
    			$.Notification.autoHideNotify('error', 'top right', '#rc.alertError#');
    		});
    	</script>
    <cfelseif StructKeyExists(rc, "alertSuccess")>
        <script type="text/javascript">
    		$(document).ready(function() {
    			$.Notification.autoHideNotify('success', 'top right', '#rc.alertSuccess#');
    		});
    	</script>
    <cfelseif StructKeyExists(rc, "alertWarning")>
        <script type="text/javascript">
    		$(document).ready(function() {
    			$.Notification.autoHideNotify('warning', 'top right', '#rc.alertWarning#');
    		});
    	</script>
    </cfif>
</cfoutput>
