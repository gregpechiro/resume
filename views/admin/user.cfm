<cfparam name="rc.user.username" default="">
<cfparam name="rc.user.role" default="">
<!DOCTYPE html>
<html>
	<head>
        <cfoutput>
			#view('includes/head')#
			#view('includes/admin/head')#
		</cfoutput>

		<title>User</title>
	</head>
	<body>
		<cfoutput>
			#view('includes/admin/navbar')#
		</cfoutput>
		<div class="container">
			<div class="row">
				<div class="col">
					<legend>User</legend>
					<cfoutput>
						<form action="#buildCustomURL('/admin/user')#" method="post">
							<div class="form-group">
								<label>Username</label>
								<input name="username" type="text" class="form-control" value="#rc.user.username#">
							</div>
							<div class="form-group">
								<label>Password</label>
								<div class="input-group">
									<input name="password" type="password" class="form-control toggle-pass">
									<div class="input-group-append">
										<button type="button" class="btn btn-default toggle-pass" data-toggle="tooltip" data-placement="right" title="Click to show/hide your password">
											<i class="fa fa-eye-slash"></i>
										</button>
									</div>
								</div>
								<span><small>Leave blank to keep the same</small></span>
							</div>
							<div class="form-group">
								<label>Role</label>
								<input name="Role" type="text" class="form-control" value="#rc.user.role#">
							</div>
							<cfif StructKeyExists(rc, "id")>
								<input type="hidden" name="id" value="#rc.user.id#">
							</cfif>
							<button class="btn btn-primary btn-block">Save User</button>
						</form>
					</cfoutput>
				</div>

				<div class="col">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Id</th>
	                                <th>Username</th>
	                                <th>Role</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<cfoutput>
		                            <cfloop array="#rc.users#" index="user">
										<tr>
											<td><a href="#buildCustomURL('/admin/user')#/#user.id#">#user.id#</a></td>
		                                    <td>#user.username#</td>
		                                    <td>#user.role#</td>
											<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this user?" data-color="##ff0000" data-url="#buildCustomURL('/admin/user')#/#user.id#" data-type="warning"><i class="fas fa-trash"></i></a></td>
										</tr>
									</cfloop>
								</cfoutput>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

        <cfoutput>
			#view('includes/scripts')#
			#view('includes/admin/scripts')#
			<script src="#rc.baseURL#static/js/toggle-password.js" charset="utf-8"></script>
		</cfoutput>

		<script type="text/javascript">
			confirm.yes = function(btn) {
				$('<form method="post" action="' + btn.attr('data-url') + '"></form>').appendTo('body').submit();
			}
		</script>

	</body>
</html>
