<cfparam name="rc.experience.year" default=""/>
<cfparam name="rc.experience.name" default=""/>
<cfparam name="rc.experience.city" default=""/>
<cfparam name="rc.experience.state" default=""/>
<cfparam name="rc.experience.title" default=""/>
<cfparam name="rc.experience.sort" default=""/>
<cfparam name="rc.experience.description" default=""/>
<cfparam name="rc.experience.education" default=""/>

<!DOCTYPE html>
<html>
	<head>
        <cfoutput>
			#view('includes/head')#
			#view('includes/admin/head')#
		</cfoutput>

		<title>Experience</title>
	</head>
	<body>
		<cfoutput>
			#view('includes/admin/navbar')#
		</cfoutput>
		<div class="container">
			<div class="row">
				<div class="col">
					<legend>Experience</legend>
					<cfoutput>
						<form action="#buildCustomURL('/admin/experience')#" method="post">
							<div class="form-group">
								<label>Year</label>
								<input name="year" type="text" class="form-control" value="#rc.experience.year#">
							</div>
							<div class="form-group">
								<label>Name</label>
								<input name="name" type="text" class="form-control" value="#rc.experience.name#">
							</div>
							<div class="form-group">
								<label>City</label>
								<input name="city" type="text" class="form-control" value="#rc.experience.city#">
							</div>
							<div class="form-group">
								<label>State</label>
								<input name="state" type="text" class="form-control" value="#rc.experience.state#">
							</div>
							<div class="form-group">
								<label>Title</label>
								<input name="title" type="text" class="form-control" value="#rc.experience.title#">
							</div>
							<div class="form-group">
								<label>Sort</label>
								<input name="sort" type="number" class="form-control" value="#rc.experience.sort#">
							</div>
							<div class="form-group">
								<label>Description</label>
								<textarea name="description" rows="9" class="form-control">#rc.experience.description#</textarea>
							</div>
							<div class="form-group">
								<label>Education</label>
								<textarea name="education" rows="9" class="form-control">#rc.experience.education#</textarea>
							</div>
							<cfif StructKeyExists(rc, "id")>
								<input type="hidden" name="id" value="#rc.experience.id#">
							</cfif>
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
							<cfoutput>
	                            <cfloop array="#rc.experiences#" index="experience">
									<tr>
										<td><a href="#buildCustomURL('/admin/experience')#/#experience.id#">#experience.id#</a></td>
	                                    <td>#experience.name#</td>
	                                    <td>#experience.title#</td>
										<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this experience?" data-color="##ff0000" data-url="#buildCustomURL('/admin/experience')#/#experience.id#" data-type="warning"><i class="fas fa-trash"></i></a></td>
									</tr>
								</cfloop>
							</cfoutput>
						</tbody>
					</table>
				</div>
			</div>
		</div>

        <cfoutput>
			#view('includes/scripts')#
			#view('includes/admin/scripts')#
		</cfoutput>

		<script type="text/javascript">
			confirm.yes = function(btn) {
				$('<form method="post" action="' + btn.attr('data-url') + '"></form>').appendTo('body').submit();
			}
		</script>

	</body>
</html>
