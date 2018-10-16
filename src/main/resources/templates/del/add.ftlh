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

				<div class="col">
					<legend>Me</legend>
					<form action="/me" method="post">
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
							<label>phoneNumber</label>
							<input name="phoneNumber" type="text" class="form-control" value="${(me.phoneNumber)!}">
						</div>
						<div class="form-group">
							<label>Email</label>
							<input name="email" type="email" class="form-control" value="${(me.email)!}">
						</div>
						<button class="btn btn-primary btn-block">Save Me</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
				</div>

				<div class="col">
					<legend>Reference</legend>
					<form action="/reference" method="post">
						<div class="form-group">
							<label>First Name</label>
							<input name="firstName" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Last Name</label>
							<input name="lastName" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Title</label>
							<input name="title" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Years Known</label>
							<input name="yearsKnown" type="number" class="form-control">
						</div>
						<div class="form-group">
							<label>Phone Type</label>
							<input name="phoneType" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Phone Number</label>
							<input name="phoneNumber" type="text" class="form-control">
						</div>
						<button class="btn btn-primary btn-block">Save Reference</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
				</div>

				<div class="col">
					<legend>Skill</legend>
					<form action="/skill" method="post">
						<div class="form-group">
							<label>Category</label>
							<input name="category" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Name</label>
							<input name="name" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Link</label>
							<input name="link" type="text" class="form-control">
						</div>
						<button class="btn btn-primary btn-block">Save Skill</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
				</div>

				<div class="col">
					<legend>Experience</legend>
					<form action="/experience" method="post">
						<div class="form-group">
							<label>Year</label>
							<input name="year" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Name</label>
							<input name="name" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>City</label>
							<input name="city" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>State</label>
							<input name="state" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Title</label>
							<input name="title" type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>Sort</label>
							<input name="sort" type="number" class="form-control">
						</div>
						<button class="btn btn-primary btn-block">Save Experience</button>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
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
