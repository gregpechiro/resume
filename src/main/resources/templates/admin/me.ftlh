<!DOCTYPE html>
<html>
	<head>
		<#include "../includes/head.ftlh"/>
		<#include "../includes/admin/head.ftlh"/>

		<title>Me</title>
	</head>
	<body>
		<#include "../includes/admin/navbar.ftlh"/>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-4">
					<legend>Me</legend>
					<form action="/admin/me" method="post">
						<div class="form-group">
							<label>Street</label>
							<input name="street" type="text" class="form-control" value="${(me.street)!}">
						</div>
						<div class="form-group">
							<label>City</label>
							<input name="city" type="text" class="form-control" value="${(me.city)!}">
						</div>
						<div class="form-group">
							<label>State</label>
							<input name="state" type="text" class="form-control" value="${(me.state)!}">
						</div>
						<div class="form-group">
							<label>Zip</label>
							<input name="zip" type="text" class="form-control" value="${(me.zip)!}">
						</div>
						<div class="form-group">
							<label>Phone Number</label>
							<input name="phoneNumber" type="text" class="form-control" value="${(me.phoneNumber)!}">
						</div>
						<div class="form-group">
							<label>Email</label>
							<input name="email" type="email" class="form-control" value="${(me.email)!}">
						</div>
						<button class="btn btn-primary btn-block">Save Me</button>
						<input type="hidden" name="id" value="${(me.id)!}">
					</form>
				</div>
			</div>
		</div>

		<#include "../includes/scripts.ftlh"/>
		<#include "../includes/admin/scripts.ftlh"/>

		<script type="text/javascript">
			confirm.yes = function(btn) {
				$('<form method="post" action="' + btn.attr('data-url') + '"></form>').appendTo('body').submit();
			}
		</script>

	</body>
</html>
