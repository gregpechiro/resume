<!DOCTYPE html>
<html>
	<head>
		<#include "../includes/head.ftlh"/>
		<#include "../includes/admin/head.ftlh"/>

		<title>User</title>
	</head>
	<body>
		<cfoutput>
			<#include "../includes/admin/navbar.ftlh"/>
		</cfoutput>
		<div class="container">
			<div class="row">
				<div class="col">
					<legend>User</legend>
					<form action="/admin/user" method="post">
						<div class="form-group">
							<label>Username</label>
							<input name="username" type="text" class="form-control" value="${(user.username)!}">
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
							<input name="Role" type="text" class="form-control" value="${(user.role)!}">
						</div>
						<div class="form-group">
							<label>Active</label><br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="active" id="yes" value="true">
								<label class="form-check-label" for="yes">Yes</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="active" id="no" value="false">
								<label class="form-check-label" for="no">No</label>
							</div>
						</div>
						<#if user?? && user.id??>
							<input type="hidden" name="id" value="${(user.id)!}">
						</#if>
						<button class="btn btn-primary btn-block">Save User</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
				</div>

				<div class="col">
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
							<#list users as user>
								<tr>
									<td><a href="/admin/user/${(user.id)!}">${(user.id)!}</a></td>
									<td>${(user.username)!}</td>
									<td>${(user.role)!}</td>
									<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this user?" data-color="##ff0000" data-url="/admin/user/${(user.id)!}" data-type="warning"><i class="fas fa-trash"></i></a></td>
								</tr>
							</#list>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<#include "../includes/scripts.ftlh"/>
		<#include "../includes/admin/scripts.ftlh"/>
		<script src="/static/js/toggle-password.js" charset="utf-8"></script>

		<script type="text/javascript">
			confirm.yes = function(btn) {
				$('<form method="post" action="' + btn.attr('data-url') + '"></form>').appendTo('body').submit();
			}
		</script>

	</body>
</html>
