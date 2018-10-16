<!DOCTYPE html>
<html>
	<head>
		<#include "../includes/head.ftlh"/>
		<#include "../includes/admin/head.ftlh"/>

		<title>Skill</title>
	</head>
	<body>
		<#include "../includes/admin/navbar.ftlh"/>
		<div class="container">
			<div class="row">
				<div class="col">
					<legend>Skill</legend>
					<form action="/admin/skill" method="post">
						<div class="form-group">
							<label>Category</label>
							<input name="category" type="text" class="form-control" value="${(skill.category)!}">
						</div>
						<div class="form-group">
							<label>Name</label>
							<input name="name" type="text" class="form-control" value="${(skill.name)!}">
						</div>
						<div class="form-group">
							<label>Link</label>
							<input name="link" type="text" class="form-control" value="${(skill.link)!}">
						</div>
						<#if skill??>
							<input type="hidden" name="id" value="${(skill.id)!}">
						</#if>
						<button class="btn btn-primary btn-block">Save Skill</button>
					</form>
				</div>

				<div class="col">
					<table class="table">
						<thead>
							<tr>
								<th>Id</th>
                                <th>Name</th>
                                <th>Category</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<#list skills as skill>
								<tr>
									<td><a href="/admin/skill/${(skill.id)!}">${(skill.i?c)!}</a></td>
									<td>${(skill.name)!}</td>
									<td>${(skill.category)!}</td>
									<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this skill?" data-color="##ff0000" data-url="/admin/skill/${(skill.id)!}" data-type="warning"><i class="fas fa-trash"></i></a></td>
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
