<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>ADD</title>
		<!-- favicon -->
		<link rel="shortcut icon" href="static/img/favicon.ico">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

		<title>Login</title>
	</head>
	<body>

		<div class="container">
			<div class="row">
				<div class="col-4">
					<legend>Experience</legend>
					<form action="/experience/edit" method="post">
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
							<textarea name="description" rows="5" class="form-control">${(experience.description)!}</textarea>
						</div>
						<div class="form-group">
							<label>Education</label>
							<textarea name="education" rows="5" class="form-control">${(experience.education)!}</textarea>
						</div>
						<#if experience??>
							<input type="hidden" name="id" value="${(experience.id?c)!}">
						</#if>
						<button class="btn btn-primary btn-block">Save Experience</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
				</div>

				<div class="col-8">
					<table class="table">
						<thead>
							<tr>
								<th>Id</th>
								<th>Year</th>
								<th>Name</th>
								<th>City</th>
								<th>State</th>
								<th>Title</th>
								<th>Sort</th>
							</tr>
						</thead>
						<tbody>
							<#list experiences as experience>
								<tr>
									<td><a href="/experience/${(experience.id)!}">${(experience.id)!}</a></td>
									<td>${(experience.year)!}</td>
									<td>${(experience.name)!}</td>
									<td>${(experience.city)!}</td>
									<td>${(experience.state)!}</td>
									<td>${(experience.title)!}</td>
									<td>${(experience.sort)!}</td>
								</tr>
							</#list>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<!-- JQuery JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<!-- Bootstrap JS -->
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
