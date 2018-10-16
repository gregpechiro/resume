<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Greg Pechiro's Resume</title>
		<!--- Include Head --->
		<#include "includes/head.ftlh"/>
		<!-- Page Custom CSS -->
		<link rel="stylesheet" href="/static/css/resume.css">
		<!-- Timeline CSS -->
		<link rel="stylesheet" href="/static/css/timeline.css">
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
					<#if user.role == "ROLE_ADMIN">
						<li class="nav-item">
							<a class="nav-link" href="/admin/me">Admin Section</a>
						</li>
					</#if>

					<li class="nav-item">
						<a class="nav-link" href="/logout">Logout</a>
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
									Not only is it designed to present information about myself it is also a representation of my abilities.
									It's an opportunity to explain what I am capable of and demonstrate some of it at the same time.
								</p>
								<span class="intro">
									This site was built with HTML5, JavaScript (JQuery), and CSS3. It is hosted on an Ubuntu virtual machine using
									Java 8 running Spring Boot. The data is stored on a MySql database.<br>
									Want to see how it works? View all of the source code on <a href="https://github.com/gregpechiro/resume" class="text-danger" target="_blank">GitHub.</a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Introduction End -->

		<!-- Contact Information Start -->
		<section id="contact">
			<div class="container">
				<div class="row text-center mt-5">
					<div class="col">
						<h2><u>Contact Information</u></h2>
					</div>
				</div>
				<div class="row justify-content-center">
				<div class="col-12 text-center">
					<h3>Greg Pechiro</h3>
				</div>
					<div class="col-6 col-md-4">
						<p class="text-left">
							<b>Address</b><br>
							${(me.street)!}<br>
							${(me.city)!}, ${(me.state)!} ${(me.zip)!}
						</p>
					</div>
					<div class="col-6 col-md-4">
						<p class="text-right">
							<b>Phone</b><br>
							${(me.phoneNumber)!}<br>
							<b>Email</b><br>
							${(me.email)!}
						</p>
					</div>
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
						<!--- Download Resume Link --->
						<a href="/static/Greg Pechiro's resume.docx" download class="btn btn-danger btn-lg btn-block">Download My Resume</a>
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
											<!--- Loop Language Skills --->
											<#list languages as language>
												<div class="col-6 col-lg-3 mb-3 <#--#((language.recordCount - language.currentRow) LT 4) ? 'mb-md-0' : ''#--> ">
													<div class="card card-nested h-100">
														<h6 class="card-header bg-secondary text-white">
															${(language.name)!}
														</h6>
														<div class="card-body bg-light vertical-center">
															<a href="${(language.link)!}" target="_blank">
																<img src="/static/img/${(language.name?lower_case?replace(' ', '-'))!}.png" class="img-fluid rotate py-3" alt="">
															</a>
														</div>
													</div>
												</div>
											</#list>

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
											<!--- Loop Library And Framework Skills --->
											<#list libFrames as libFrame>
												<div class="col-6 col-lg-3 mb-3 <#--#((libFrame.recordCount - libFrame.currentRow) LT 4) ? 'mb-md-0' : ''#-->">
													<div class="card card-nested h-100">
														<h6 class="card-header bg-secondary text-white">
															${(libFrame.name)!}
														</h6>
														<div class="card-body bg-light vertical-center">
															<a href="${(libFrame.link)!}" target="_blank">
																<img src="/static/img/${(libFrame.name?lower_case?replace(' ', '-'))!}.png" class="img-fluid rotate py-3" alt="">
															</a>
														</div>
													</div>
												</div>
											</#list>

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
											<!--- Loop Database Skills --->
											<#list databases as database>
												<div class="col-6 col-lg-3 mb-3 <#--#((database.recordCount - database.currentRow) LT 4) ? 'mb-md-0' : ''#-->">
													<div class="card card-nested h-100">
														<h6 class="card-header bg-secondary text-white">
															${(database.name)!}
														</h6>
														<div class="card-body bg-light vertical-center">
															<a href="${(database.link)!}" target="_blank">
																<img src="/static/img/${(database.name?lower_case?replace(' ', '-'))!}.png" class="img-fluid rotate py-3" alt="">
															</a>
														</div>
													</div>
												</div>
											</#list>
										</div>
									</div>
								</div>
							</div>
							<!-- Databases End -->

							<!-- Other Technologies Start -->
							<div class="card">
								<div class="card-header bg-danger text-white pointer skill" id="headingCLI" data-toggle="collapse" data-target="#collapseCLI" aria-expanded="true" aria-controls="collapseCLI">
									Command line / Other Technologies
								</div>
								<div id="collapseCLI" class="collapse" aria-labelledby="headingCLI" data-parent="#accordion">
									<div class="card-body">
										<div class="row justify-content-center">
											<!--- Loop Other Technology Skills --->
											<#list others as other>
												<div class="col-6 col-lg-3 mb-3 <#--#((other.recordCount - other.currentRow) LT 4) ? 'mb-md-0' : ''#--> ">
													<div class="card card-nested h-100">
														<h6 class="card-header bg-secondary text-white">
															${(other.name)!}
														</h6>
														<div class="card-body bg-light vertical-center">
															<a href="${(other.link)!}" target="_blank">
																<img src="/static/img/${(other.name?lower_case?replace(' ', '-'))!}.png" class="img-fluid rotate py-3" alt="">
															</a>
														</div>
													</div>
												</div>
											</#list>

										</div>
									</div>
								</div>
							</div>
							<!-- Other Technologies End -->

						</div>
						<!-- Skills Accordion End -->

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
							<!--- Loop Experiences --->
							<#assign i = 1>
							<#list experiences?sort_by("sort") as experience>
								<#if i % 2 != 0>
									<!--- Odd Row Dates Go On The Left --->
									<div class="timeline-item">
										<div class="row" data-aos="fade-up">
											<div class="col-6">
												<div class="duration date-label-left bg-danger tilt-right pointer experience-year" data-id="${(experience.id)!}">${(experience.year)!}</div>
											</div>
											<div class="col-6">
												<div class="event event-description-right">
													<h4>${(experience.name)!}</h4>
													<p class="timeline-subtitle">${(experience.city)!}, ${(experience.state)!}<br>${(experience.title)!}</p>
												</div>
											</div>
										</div>
									</div>
								<#else >
									<!--- Even Row Dates Go On The Right --->
									<div class="timeline-item">
										<div class="row" data-aos="fade-up">
											<div class="col-6">
												<div class="event event-description-left">
													<h4>${(experience.name)!}</h4>
													<p class="timeline-subtitle">${(experience.city)!}, ${(experience.state)!}<br>${(experience.title)!}</p>
												</div>
											</div>
											<div class="col-6">
												<div class="duration duration-right  bg-danger tilt-left pointer experience-year" data-id="${(experience.id)!}">${(experience.year)!}</div>
											</div>
										</div>
									</div>
								</#if>
								<#assign i = i+1>
							</#list>

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

								<!--- Loop References --->
								<#assign i = 1>
								<#list references as reference>
									<div class="carousel-item  ${(i == 1) ? string('active', '')}">
										<div class="reference bg-secondary text-white py-5 rounded">
											<p><b>${(reference.firstName)!} ${(reference.lastName)!}</b></p>
											<span>
												${(reference.title)!}<br>
												Years known: ${(reference.yearsKnown)!}<br>
												${(reference.phoneType)!} Number: ${(reference.phoneNumber)!}
											</span>
										</div>
									</div>
									<#assign i = i + 1>
								</#list>
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
							Want to leave me a message about what you think? Fill out the form below!
						</p>
						<form action="/secure/message" method="post">
							<div class="row justify-content-center">
								<div class="col-md-4">
									<div class="form-group">
										<label for="name">Name</label>
										<#if messageErrors?? && messageErrors.name??>
											<span class="text-danger"><br><small>${(messageErrors.name)!}</small></span>
										</#if>
										<input type="text" class="form-control" name="name" placeholder="Name" value="${(message.name)!}">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="email">Email address</label>
										<#if messageErrors?? && messageErrors.email??>
											<span class="text-danger"><br><small>${(messageErrors.email)!}</small></span>
										</#if>
										<input type="email" class="form-control" name="email" placeholder="Email" value="${(message.email)!}">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="subject">Subject</label>
										<#if messageErrors?? && messageErrors.subject??>
											<span class="text-danger"><br><small>${(messageErrors.subject)!}</small></span>
										</#if>
										<input type="text" class="form-control" name="subject" placeholder="Subject" value="${(message.subject)!}">
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<label for="body">Message</label>
										<#if messageErrors?? && messageErrors.body??>
											<span class="text-danger"><br><small>${(messageErrors.body)!}</small></span>
										</#if>
										<textarea class="form-control" name="body" rows="8">${(message.body)!}</textarea>
									</div>
								</div>
								<div class="col-md-4">
									<button class="btn btn-danger btn-block">Send</button>
								</div>
							</div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						</form>
					</div>
				</div>
				<div class="row justify-content-center text-center pt-3">
					<div class="col-lg-3">
						<!--- Download Resume Link --->
						<a href="/static/Greg Pechiro's resume.docx" download class="btn btn-danger btn-lg btn-block">Download My Resume</a>
					</div>
				</div>
			</div>
		</section>
		<!-- Message End -->

		<div class="pt-5">
			<!--- Include Footer --->
			<#include "includes/footer.ftlh"/>
		</div>

		<!-- Footer End -->

		<!-- Experience Modal Start -->
		<div class="modal fade" id="experienceModal" tabindex="-1" role="dialog" aria-labelledby="experienceModalTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content dark-trans text-white border border-white">
					<div class="modal-header">
						<h5 class="modal-title" id="experienceModalTitle"></h5>
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

		<!--- Set JS Variable --->
		<script type="text/javascript">
			var baseURL = '/secure/experience/rest/';
		</script>

		<!-- include Scripts -->
		<#include "includes/scripts.ftlh"/>

		<!-- Additional Easing Functions JS -->
		<script src="/static/js/easing.js" charset="utf-8"></script>
		<!-- Custom JS -->
		<script src="/static/js/main.js"></script>

		<#if messageErrors??>
			<!-- Scroll to Message Form On Error -->
			<script type="text/javascript">
				$(document).ready(function() {
					var messageDiv = $('#message');
					var top = messageDiv.offset().top;
					scroll(top);
				});
			</script>
		</#if>
	</body>

</html>
