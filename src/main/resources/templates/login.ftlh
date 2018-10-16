<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Greg Pechiro's Resume</title>
		<!--- Include Head --->
		<#include "includes/head.ftlh"/>
		<!--- Page Custom CSS --->
		<link rel="stylesheet" href="/static/css/login.css">
	</head>

	<body>
		<!-- Navbar Start -->
		<nav class="navbar navbar-expand navbar-dark bg-dark">
			<a class="navbar-brand"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
				<div class="text-white">
					Greg Pechiro's Resume
				</div>
			</div>
		</nav>
		<!-- Navbar End -->

		<!-- Login Start -->
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-md-4 pt-5">
					<div class="card dark-trans text-white">
						<div class="card-header text-center bg-secondary">
							Login
						</div>
						<div class="card-body">
							<form action="/login" method="post">
								<div class="form-group">
									<label>Username</label>
									<!--- Username Error Message --->
									<#if loginErrors?? && loginErrors.username??>
										<span class="text-danger"><br><small>${(loginErrors.username)!}</small></span>
									</#if>
									<input class="form-control" type="text" name="username">
								</div>
								<div class="form-group">
									<label>Password</label>
									<!--- Password Error Message --->
									<#if loginErrors?? && loginErrors.password??>
										<span class="text-danger"><br><small>${(loginErrors.password)!}</small></span>
									</#if>
									<div class="input-group">
										<input type="password" id="password" name="password" class="form-control toggle-pass"/>
										<div class="input-group-append">
											<button type="button" class="btn btn-default toggle-pass" data-toggle="tooltip" data-placement="right" title="Click to show/hide your password">
												<i class="fa fa-eye-slash"></i>
											</button>
										</div>
									</div>
								</div>
								<button class="btn btn-dark btn-block" name="button">Submit</button>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--- Login End --->

		<!--- Include Footer --->
		<#include "includes/footer.ftlh"/>
		<!--- Include Scripts --->
		<#include "includes/scripts.ftlh"/>
		<!--- Toggle Password JS --->
		<script src="/static/js/toggle-password.js" charset="utf-8"></script>

	</body>

</html>
