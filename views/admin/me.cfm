<!DOCTYPE html>
<html>
	<head>
        <cfoutput>
			#view('includes/head')#
			#view('includes/admin/head')#
		</cfoutput>

		<title>Me</title>
	</head>
	<body>
		<cfoutput>
			#view('includes/admin/navbar')#
		</cfoutput>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-4">
					<legend>Me</legend>
					<cfoutput>
						<form action="#buildCustomURL('/admin/me')#" method="post">
							<div class="form-group">
								<label>Street</label>
								<input name="street" type="text" class="form-control" value="#rc.me.street#">
							</div>
							<div class="form-group">
								<label>City</label>
								<input name="city" type="text" class="form-control" value="#rc.me.city#">
							</div>
							<div class="form-group">
								<label>State</label>
								<input name="state" type="text" class="form-control" value="#rc.me.state#">
							</div>
							<div class="form-group">
								<label>Zip</label>
								<input name="zip" type="text" class="form-control" value="#rc.me.zip#">
							</div>
							<div class="form-group">
								<label>Phone Number</label>
								<input name="phoneNumber" type="text" class="form-control" value="#rc.me.phoneNumber#">
							</div>
							<div class="form-group">
								<label>Email</label>
								<input name="email" type="email" class="form-control" value="#rc.me.email#">
							</div>
							<input type="hidden" name="id" value="#rc.me.id#">
							<button class="btn btn-primary btn-block">Save Me</button>
						</form>
					</cfoutput>
				</div>
			</div>
		</div>

        <cfoutput>
			#view('includes/scripts')#
			#view('includes/admin/scripts')#
		</cfoutput>

		<script type="text/javascript">
			confirm.yes = function(btn) {
				$('<form method="post" action="' + btn.attr('data-url') + '"></form>').appendTo('body').submit();
			}
		</script>

	</body>
</html>
