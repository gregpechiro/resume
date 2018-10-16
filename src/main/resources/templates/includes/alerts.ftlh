<script src="/static/js/notify.min.js"></script>
<script src="/static/js/notify-metro.js"></script>
<script src="/static/js/notification.js"></script>
<#noautoesc>
	<#if alert??>
    <script type="text/javascript">
		$(document).ready(function() {
			$.Notification.autoHideNotify('info', 'top right', '${(alert)!}');
			console.log('alert');
		});
	</script>
	<#elseif alertError??>
    <script type="text/javascript">
		$(document).ready(function() {
			$.Notification.autoHideNotify('error', 'top right', '${(alertError)!}');
		});
	</script>
	<#elseif alertSuccess??>
    <script type="text/javascript">
		$(document).ready(function() {
			$.Notification.autoHideNotify('success', 'top right', '${(alertSuccess)!}');
		});
	</script>
	<#elseif alertWarning??>
    <script type="text/javascript">
		$(document).ready(function() {
			$.Notification.autoHideNotify('warning', 'top right', '${(alertWarning)!}');
		});
	</script>
	</#if>
</#noautoesc>