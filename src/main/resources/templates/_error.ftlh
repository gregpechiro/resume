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

			<!--- Error Begin --->
			<div class="container">
	            <div class="row text-white text-center">
					<div class="col pt-5">
                        <div class="card dark-trans">
                            <div class="card-body">
                                <h1>Something went wrong</h1>
                                <h3>Let's get you back to somewhere <a class="text-danger" href="/">familiar</a>.</h3>
                            </div>
                        </div>
					</div>
				</div>
			</div>
			<!--- Error End --->

			<!--- Include Footer --->
			<#include "includes/footer.ftlh"/>
			<!--- Include Scripts --->
			<#include "includes/scripts.ftlh"/>

	</body>

</html>
