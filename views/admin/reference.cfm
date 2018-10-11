<cfparam name="rc.reference.firstName" default="">
<cfparam name="rc.reference.lastName" default="">
<cfparam name="rc.reference.title" default="">
<cfparam name="rc.reference.yearsKnown" default="">
<cfparam name="rc.reference.phoneType" default="">
<cfparam name="rc.reference.phoneNumber" default="">
<!DOCTYPE html>
<html>
	<head>
        <cfoutput>
			#view('includes/head')#
			#view('includes/admin/head')#
		</cfoutput>

		<title>Reference</title>
	</head>
	<body>
		<cfoutput>
			#view('includes/admin/navbar')#
		</cfoutput>
		<div class="container">
			<div class="row">
				<div class="col">
					<legend>Reference</legend>
					<cfoutput>
						<form action="#buildCustomURL('/admin/reference')#" method="post">
							<div class="form-group">
								<label>First Name</label>
								<input name="firstName" type="text" class="form-control" value="#rc.reference.firstName#">
							</div>
							<div class="form-group">
								<label>Last Name</label>
								<input name="lastName" type="text" class="form-control" value="#rc.reference.lastName#">
							</div>
							<div class="form-group">
								<label>Title</label>
								<input name="title" type="text" class="form-control" value="#rc.reference.title#">
							</div>
							<div class="form-group">
								<label>Years Known</label>
								<input name="yearsKnown" type="number" class="form-control" value="#rc.reference.yearsKnown#">
							</div>
							<div class="form-group">
								<label>Phone Type</label>
								<input name="phoneType" type="text" class="form-control" value="#rc.reference.phoneType#">
							</div>
							<div class="form-group">
								<label>Phone Number</label>
								<input name="phoneNumber" type="text" class="form-control" value="#rc.reference.phoneNumber#">
							</div>
							<cfif StructKeyExists(rc, "id")>
								<input type="hidden" name="id" value="#rc.reference.id#">
							</cfif>
							<button class="btn btn-primary btn-block">Save Reference</button>
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
	                            <cfloop array="#rc.references#" index="reference">
									<tr>
										<td><a href="#buildCustomURL('/admin/reference')#/#reference.id#">#reference.id#</a></td>
	                                    <td>#reference.firstName# #reference.lastName#</td>
	                                    <td>#reference.title#</td>
										<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this reference?" data-color="##ff0000" data-url="#buildCustomURL('/admin/reference')#/#reference.id#" data-type="warning"><i class="fas fa-trash"></i></a></td>
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
