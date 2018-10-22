<cfparam name="rc.skill.category" default="">
<cfparam name="rc.skill.name" default="">
<cfparam name="rc.skill.link" default="">
<!DOCTYPE html>
<html>
	<head>
        <cfoutput>
			#view('includes/head')#
			#view('includes/admin/head')#
		</cfoutput>

		<title>Skill</title>
	</head>
	<body>
		<cfoutput>
			#view('includes/admin/navbar')#
		</cfoutput>
		<div class="container">
			<div class="row">
				<div class="col">
					<legend>Skill</legend>
					<cfoutput>
						<form action="#buildCustomURL('/admin/skill')#" method="post">
							<div class="form-group">
								<label>Category</label>
								<input name="category" type="text" class="form-control" value="#rc.skill.category#">
							</div>
							<div class="form-group">
								<label>Name</label>
								<input name="name" type="text" class="form-control" value="#rc.skill.name#">
							</div>
							<div class="form-group">
								<label>Link</label>
								<input name="link" type="text" class="form-control" value="#rc.skill.link#">
							</div>
							<cfif StructKeyExists(rc, "id")>
								<input type="hidden" name="id" value="#rc.skill.id#">
							</cfif>
							<button class="btn btn-primary btn-block">Save Skill</button>
						</form>

					</cfoutput>
				</div>

				<div class="col">
					<div class="table-responsive">
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
								<cfoutput>
		                            <cfloop array="#rc.skills#" index="skill">
										<tr>
											<td><a href="#buildCustomURL('/admin/skill')#/#skill.id#">#skill.id#</a></td>
		                                    <td>#skill.name#</td>
		                                    <td>#skill.category#</td>
											<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this skill?" data-color="##ff0000" data-url="#buildCustomURL('/admin/skill')#/#skill.id#" data-type="warning"><i class="fas fa-trash"></i></a></td>
										</tr>
									</cfloop>
								</cfoutput>
							</tbody>
						</table>
					</div>
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
