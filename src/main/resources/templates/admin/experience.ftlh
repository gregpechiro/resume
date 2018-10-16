<!DOCTYPE html>
<html>
	<head>
		<#include "../includes/head.ftlh"/>
		<#include "../includes/admin/head.ftlh"/>

		<title>Experience</title>
	</head>
	<body>
		<#include "../includes/admin/navbar.ftlh"/>
		<div class="container">
			<div class="row">
				<div class="col">
					<legend>Experience</legend>
						<form action="/admin/experience" method="post">
							<div class="form-group">
								<label>Year</label>
								<input name="year" type="text" class="form-control" value="${(experience.year)!}">
							</div>
							<div class="form-group">
								<label>Name</label>
								<input name="name" type="text" class="form-control" value="${(experience.name)!}">
							</div>
							<div class="form-group">
								<label>City</label>
								<input name="city" type="text" class="form-control" value="${(experience.city)!}">
							</div>
							<div class="form-group">
								<label>State</label>
								<input name="state" type="text" class="form-control" value="${(experience.state)!}">
							</div>
							<div class="form-group">
								<label>Title</label>
								<input name="title" type="text" class="form-control" value="${(experience.title)!}">
							</div>
							<div class="form-group">
								<label>Sort</label>
								<input name="sort" type="number" class="form-control" value="${(experience.sort)!}">
							</div>
							<div class="form-group">
								<label>Description</label>
								<textarea name="description" rows="9" class="form-control">${(experience.description)!}</textarea>
							</div>
							<div class="form-group">
								<label>Education</label>
								<textarea name="education" rows="9" class="form-control">${(experience.education)!}</textarea>
							</div>
							<#if experience??>
								<input type="hidden" name="id" value="${(experience.id)!}">
							</#if>
							<button class="btn btn-primary btn-block">Save Experience</button>
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
							<#list experiences as experience>
								<tr>
									<td><a href="/admin/experience/${(experience.id)!}">${(experience.id)!}</a></td>
									<td>${(experience.name)!}</td>
									<td>${(experience.title)!}</td>
									<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this experience?" data-color="##ff0000" data-url="/admin/experience/${(experience.id)!}" data-type="warning"><i class="fas fa-trash"></i></a></td>
								</tr>
							</#list>
						</tbody>
					</table>
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
