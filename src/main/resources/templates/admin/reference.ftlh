<!DOCTYPE html>
<html>
	<head>
		<#include "../includes/head.ftlh"/>
		<#include "../includes/admin/head.ftlh"/>

		<title>Reference</title>
	</head>
	<body>
		<#include "../includes/admin/navbar.ftlh"/>
		<div class="container">
			<div class="row">
				<div class="col">
					<legend>Reference</legend>
						<form action="/admin/reference" method="post">
							<div class="form-group">
								<label>First Name</label>
								<input name="firstName" type="text" class="form-control" value="${(reference.firstName)!}">
							</div>
							<div class="form-group">
								<label>Last Name</label>
								<input name="lastName" type="text" class="form-control" value="${(reference.lastName)!}">
							</div>
							<div class="form-group">
								<label>Title</label>
								<input name="title" type="text" class="form-control" value="${(reference.title)!}">
							</div>
							<div class="form-group">
								<label>Years Known</label>
								<input name="yearsKnown" type="number" class="form-control" value="${(reference.yearsKnown)!}">
							</div>
							<div class="form-group">
								<label>Phone Type</label>
								<input name="phoneType" type="text" class="form-control" value="${(reference.phoneType)!}">
							</div>
							<div class="form-group">
								<label>Phone Number</label>
								<input name="phoneNumber" type="text" class="form-control" value="${(reference.phoneNumber)!}">
							</div>
							<#if reference??>
								<input type="hidden" name="id" value="${(reference.id)!}">
							</#if>
							<button class="btn btn-primary btn-block">Save Reference</button>
						</form>

					</cfoutput>
				</div>

				<div class="col">
					<table class="table">
						<thead>
							<tr>
								<th>Id</th>
                                <th>Name</th>
                                <th>Title</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<#list references as reference>
								<tr>
									<td><a href="/admin/reference/${(reference.id?c)!}">${(reference.id?c)!}</a></td>
									<td>${(reference.firstName)!} ${(reference.lastName)!}</td>
									<td>${(reference.title)!}</td>
									<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this reference?" data-color="##ff0000" data-url="/admin/reference/${(reference.id?c)!}" data-type="warning"><i class="fas fa-trash"></i></a></td>
								</tr>
							</#list>
						</tbody>
					</table>
				</div>
			</div>
		</div>

        <cfoutput>
			<#include "../includes/scripts.ftlh"/>
			<#include "../includes/admin/scripts.ftlh"/>
		</cfoutput>

		<script type="text/javascript">
			confirm.yes = function(btn) {
				$('<form method="post" action="' + btn.attr('data-url') + '"></form>').appendTo('body').submit();
			}
		</script>

	</body>
</html>
