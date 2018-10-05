<!DOCTYPE html>
<html lang="en" dir="ltr">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Greg Pechiro's Resume</title>
		<!-- favicon -->
		<link rel="shortcut icon" href="static/img/favicon.ico">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<!-- Fontawesome Icons CSS -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<!-- Google Font CSS -->
		<link href="https://fonts.googleapis.com/css?family=K2D" rel="stylesheet">
		<!-- Custom CSS -->
		<link rel="stylesheet" href="static/css/main.css">
		<!-- Timeline CSS -->
		<link rel="stylesheet" href="static/css/timeline.css">
	</head>

	<body data-spy="scroll" data-target="#navbarSupportedContent" data-offset="65">

		<!-- Navbar Start -->
		<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="nav navbar-nav mx-auto">
					<li class="nav-item">
						<a class="nav-link scroll" href="#introduction">Introduction</a>
					</li>
					<li class="nav-item">
						<a class="nav-link scroll" href="#contact">Contact Information</a>
					</li>
					<li class="nav-item">
						<a class="nav-link scroll" href="#about-me">About Me</a>
					</li>
					<li class="nav-item">
						<a class="nav-link scroll" href="#skills">Skills</a>
					</li>
					<li class="nav-item">
						<a class="nav-link scroll" href="#experience">Experience</a>
					</li>
					<li class="nav-item">
						<a class="nav-link scroll" href="#references">References</a>
					</li>
					<li class="nav-item">
						<a class="nav-link scroll" href="#message">Message</a>
					</li>
				</ul>
			</div>
		</nav>
		<!-- Navbar End -->

		<!-- Introduction Start -->
		<section id="introduction" class="background-img">
			<div class="container">
				<div class="row justify-content-center align-items-center" style="height: 100vh;">
					<div class="col-lg-8">
						<div class="card text-white text-center dark-trans">
							<div class="card-body">
								<p class="intro">
									I am Greg Pechiro and I am a software developer. This site is an online version of my resume.
									Not only is it designed to present information about myself it is also a representaion of my abilities.
									It's an opertunity to explain what I am capable of and demonstrate some of it at the same time.
								</p>
								<span class="intro">
									This site was built with HTML5, JavaScript (JQuery), and CSS3. It is hosted on an Ubuntu virtual machine using ColdFusion2018.
									To show my versatility, the data is stored on a MySql database and is accessed in 2 different ways, directly with ColdFusion
									in the cfml and through AJAX using JQuery.<br>
									Want to see how it works? View all of the source code on <a href="#" class="text-danger" target="_blank">GitHub.</a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Introdustion End -->

		<!-- Contact Information Start -->
		<section id="contact">
			<div class="container">
				<div class="row text-center mt-5">
					<div class="col">
						<h2><u>Contact Information</u></h2>
					</div>
				</div>
				<cfquery name="meQuery" datasource="resume">
					SELECT * FROM me
				</cfquery>
				<div class="row justify-content-center">
					<div class="col-12 text-center">
						<h3>Greg Pechiro</h3>
					</div>
					<cfoutput>
						<div class="col-6 col-md-4">
							<p class="text-left">
								<b>Address</b><br>
								#meQuery.street#<br>
								#meQuery.city#, #meQuery.state# #meQuery.zip#
							</p>
						</div>
						<div class="col-6 col-md-4">
							<p class="text-right">
								<b>Phone</b><br>
								#meQuery.phone_number#<br>
								<b>Email</b><br>
								#meQuery.email#
							</p>
						</div>
					</cfoutput>
				</div>
			</div>
		</section>
		<!-- Contact Information End -->

		<!-- About Me Start -->
		<section id="about-me">
			<div class="container">
				<div class="row text-center mt-5">
					<div class="col">
						<h2><u>About Me</u></h2>
					</div>
				</div>
				<div class="row text-center justify-content-center">
					<div class="col-lg-10">
						<p class="lead">
							I am Greg Pechiro, and I am 32 years old. I have always loved technology and have been working in
							the field in some way for over 20 years. I enjoy spending time with my children and exposing them to
							technology. Some hobbies include playing video games, hiking, Legos, and Raspberry pi projects.
							I recently started playing and repairing pinball. I am very creative minded and like to fix things when needed.
							I am a quick learner and can adapt well to changes in the work environment and technology.
						</p>
					</div>
					<div class="w-100"></div>
					<div class="col-lg-3">
						<button type="button" class="btn btn-danger btn-lg btn-block">Download My resume</button>
					</div>
				</div>
			</div>
		</section>
		<!-- About Me End -->

		<!-- Skill Start -->
		<section id="skills">
			<div class="container">
				<div class="row text-center mt-5">
					<div class="col">
						<h2><u>Skills</u></h2>
					</div>
				</div>
				<div class="row justify-content-center text-center">
					<div class="col-lg-8">

						<!-- Skills Accordian Start -->
						<div class="accordion" id="accordion">

							<!-- Languages Start -->
							<div class="card">
								<div class="card-header bg-danger text-white pointer skill" id="headingLanguage" data-toggle="collapse" data-target="#collapseLanguage" aria-expanded="true" aria-controls="collapseLanguage">
									Languages
								</div>
								<div id="collapseLanguage" class="collapse show" aria-labelledby="headingLanguage" data-parent="#accordion">
									<div class="card-body">
										<div class="row justify-content-center">

											<cfquery name = "language" datasource = "resume">
											    SELECT * FROM skill WHERE category='language'
											</cfquery>
											<cfoutput query="language">
												<div class="col-6 col-lg-3 mb-3 #((language.recordCount - language.currentRow) LT 4) ? 'mb-md-0' : ''# ">
													<div class="card card-nested h-100">
														<h6 class="card-header bg-secondary text-white">
															#language.name#
														</h6>
														<div class="card-body bg-light vertical-center">
															<a href="#language.link#" target="_blank">
																<cfset img = LCase(Replace(#language.name#, ' ', '-'))>
																<img src="static/img/#img#.png" class="img-fluid rotate py-3" alt="">
															</a>
														</div>
													</div>
												</div>
											</cfoutput>

										</div>
									</div>
								</div>
							</div>
							<!-- Languages End -->

							<!-- Libraries and Frameworks Start -->
							<div class="card">
								<div class="card-header bg-danger text-white pointer skill" id="headingFramework" data-toggle="collapse" data-target="#collapseFramework" aria-expanded="true" aria-controls="collapseFramework">
									Libraries and Frameworks
								</div>
								<div id="collapseFramework" class="collapse" aria-labelledby="headingFramework" data-parent="#accordion">
									<div class="card-body">
										<div class="row justify-content-center">

											<cfquery name = "libFrame" datasource = "resume">
											    SELECT * FROM skill WHERE category='library-framework'
											</cfquery>
											<cfoutput query="libFrame">
												<div class="col-6 col-lg-3 mb-3 #((libFrame.recordCount - libFrame.currentRow) LT 4) ? 'mb-md-0' : ''#">
													<div class="card card-nested h-100">
														<h6 class="card-header bg-secondary text-white">
															#libFrame.name#
														</h6>
														<div class="card-body bg-light vertical-center">
															<a href="#libFrame.link#" target="_blank">
																<cfset img = LCase(Replace(#libFrame.name#, ' ', '-'))>
																<img src="static/img/#img#.png" class="img-fluid rotate py-3" alt="">
															</a>
														</div>
													</div>
												</div>
											</cfoutput>

										</div>
									</div>
								</div>
							</div>
							<!-- Library and Frameworks End -->

							<!-- Databases Start -->
							<div class="card">
								<div class="card-header bg-danger text-white pointer skill" id="headingDB" data-toggle="collapse" data-target="#collapseDB" aria-expanded="true" aria-controls="collapseDB">
									Databases
								</div>
								<div id="collapseDB" class="collapse" aria-labelledby="headingDB" data-parent="#accordion">
									<div class="card-body">
										<div class="row justify-content-center">

											<cfquery name = "database" datasource = "resume">
											    SELECT * FROM skill WHERE category='database'
											</cfquery>
											<cfoutput query="database">
												<div class="col-6 col-lg-3 mb-3 #((database.recordCount - database.currentRow) LT 4) ? 'mb-md-0' : ''#">
													<div class="card card-nested h-100">
														<h6 class="card-header bg-secondary text-white">
															#database.name#
														</h6>
														<div class="card-body bg-light vertical-center">
															<a href="#database.link#" target="_blank">
																<cfset img = LCase(Replace(#database.name#, ' ', '-'))>
																<img src="static/img/#img#.png" class="img-fluid rotate py-3" alt="">
															</a>
														</div>
													</div>
												</div>
											</cfoutput>

										</div>
									</div>
								</div>
							</div>
							<!-- Databases End -->

							<!-- Command Line Start -->
							<div class="card">
								<div class="card-header bg-danger text-white pointer skill" id="headingCLI" data-toggle="collapse" data-target="#collapseCLI" aria-expanded="true" aria-controls="collapseCLI">
									Command line / Other Technologies
								</div>
								<div id="collapseCLI" class="collapse" aria-labelledby="headingCLI" data-parent="#accordion">
									<div class="card-body">
										<div class="row justify-content-center">

											<cfquery name = "other" datasource = "resume">
											    SELECT * FROM skill WHERE category='other'
											</cfquery>
											<cfoutput query="other">
												<div class="col-6 col-lg-3 mb-3 #((other.recordCount - other.currentRow) LT 4) ? 'mb-md-0' : ''# ">
													<div class="card card-nested h-100">
														<h6 class="card-header bg-secondary text-white">
															#other.name#
														</h6>
														<div class="card-body bg-light vertical-center">
															<a href="#other.link#" target="_blank">
																<cfset img = LCase(Replace(#other.name#, ' ', '-'))>
																<img src="static/img/#img#.png" class="img-fluid rotate py-3" alt="">
															</a>
														</div>
													</div>
												</div>
											</cfoutput>

										</div>
									</div>
								</div>
							</div>
							<!-- Command Line End -->

						</div>
						<!-- Skills Accordian End -->

					</div>
				</div>
			</div>
		</section>
		<!-- Skill End -->

		<!-- Experience Start -->
		<section id="experience">
			<div class="container">
				<div class="row text-center mt-5">
					<div class="col">
						<h2><u>Experience</u></h2>
						<p>Click the date to see more information</p>
					</div>
				</div>
				<div class="row">
					<div class="col-12">

						<!-- Experience Timeline Start -->
						<div class="timeline-page">

							<cfquery name = "experience" datasource = "resume">
								SELECT id, city,name,state,title,year FROM experience ORDER BY sort
							</cfquery>
							<cfoutput query="experience" >
								<cfif experience.currentRow MOD 2 NEQ 0>
									<!--- odd row dates go on the left --->
									<div class="timeline-item">
										<div class="row" data-aos="fade-up">
											<div class="col-6">
												<div class="duration date-label-left bg-danger tilt-right pointer experience-year" data-id="#experience.id#">#experience.year#</div>
											</div>
											<div class="col-6">
												<div class="event event-description-right">
													<h4>#experience.name#</h4>
													<p class="timeline-subtitle">#experience.city#, #experience.state#<br>#experience.title#</p>
												</div>
											</div>
										</div>
									</div>
								<cfelse>
									<!--- even row dates go on the right --->
									<div class="timeline-item">
										<div class="row" data-aos="fade-up">
											<div class="col-6">
												<div class="event event-description-left">
													<h4>#experience.name#</h4>
													<p class="timeline-subtitle">#experience.city#, #experience.state#<br>#experience.title#</p>
												</div>
											</div>
											<div class="col-6">
												<div class="duration duration-right  bg-danger tilt-left pointer experience-year" data-id="#experience.id#">#experience.year#</div>
											</div>
										</div>
									</div>
								</cfif>
							</cfoutput>

						</div>
						<!-- Experience Timeline End -->

					</div>
				</div>
			</div>
		</section>
		<!-- Experience End -->

		<!-- References Start -->
		<section id="references">
			<div class="container">
				<div class="row text-center">
					<div class="col">
						<h2><u>References</u></h2>
					</div>
				</div>
				<div class="row justify-content-center text-center">
					<div class="col-12 col-md-7">

						<!-- References Carousel Start -->
						<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<cfquery name = "references" datasource = "resume">
									SELECT * FROM reference
								</cfquery>
								<cfoutput query="references">
									<div class="carousel-item #(references.currentRow == 1) ? 'active' : ''#">
										<div class="reference bg-secondary text-white py-5 rounded">
											<p><b>#references.first_name# #references.last_name#</b></p>
											<span>
												#references.title#<br>
												Years known: #references.years_known#<br>
												#references.phone_type# Number: #references.phone_number#
											</span>
										</div>
									</div>
								</cfoutput>
							</div>
						</div>
						<!-- References Carousel End -->

						<!-- References Carousel Navigation Start -->
						<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
						<!-- References Carousel Navigation Start -->

					</div>
				</div>
			</div>
		</section>
		<!-- Reference End -->

		<!-- Message Start -->
		<section id="message">
			<div class="container">
				<div class="row text-center mt-5">
					<div class="col">
						<h2><u>Leave Me A Message</u></h2>
					</div>
				</div>
				<div class="row justify-content-center text-center">
					<div class="col-12 col-md-8">
						<p>
							Want to leave me a message about what you think? Fill out the form bellow!
						</p>
						<form action="" method="post">
							<div class="row justify-content-center">
								<div class="col-md-4">
									<div class="form-group">
										<label for="name">Name</label>
										<input type="text" class="form-control" id="name" placeholder="Name">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="email">Email address</label>
										<input type="email" class="form-control" id="email" placeholder="Email">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="subject">Subject</label>
										<input type="subject" class="form-control" id="subject" placeholder="Subject">
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<label for="body">Message</label>
										<textarea class="form-control" name="body" rows="8"></textarea>
									</div>
								</div>
								<div class="col-md-4">
									<button type="button" name="send" id="send" class="btn btn-danger btn-block">Send</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		<!-- Message End -->

		<!-- Footer Start -->
		<footer class="pt-5">
			<div class="container pt-5">
				<div class="row justify-content-center text-center">
					<div class="col">
						<a class="text-secondary" href="https://github.com/gregpechiro" target="_blank">
							<i class="fab fa-github fa-2x"></i>
						</a>
						<p>
							&copy; 2018 Greg Pechiro
						</p>
					</div>
				</div>
			</div>
		</footer>
		<!-- Footer End -->

		<!-- Experience Modal Start -->
		<div class="modal fade" id="experienceModal" tabindex="-1" role="dialog" aria-labelledby="experienceModalTitle" aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
				<div class="modal-content dark-trans text-white border border-white">
					<div class="modal-header">
						<h5 class="modal-title" id="experienceModalTitle">COMPANY</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="text-white">&times;</span>
						</button>
					</div>
					<div id="experienceModalBody" class="modal-body">
					</div>
				</div>
			</div>
		</div>
		<!-- Experience Modal End -->

		<!-- JQuery JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<!-- Bootstrap JS -->
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		<!-- Additional Easing Functions JS -->
		<script src="static/js/easing.js" charset="utf-8"></script>
		<!-- Custom JS -->
		<script src="static/js/main.js"></script>

	</body>

</html>
