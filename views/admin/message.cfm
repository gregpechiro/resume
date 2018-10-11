<!DOCTYPE html>
<html>
	<head>
        <cfoutput>
			#view('includes/head')#
			#view('includes/admin/head')#
		</cfoutput>

		<title>Message</title>
	</head>
	<body>
		<cfoutput>
			#view('includes/admin/navbar')#
		</cfoutput>
		<div class="container">
			<div class="row">
				<div class="col">
					<table class="table">
						<thead>
							<tr>
								<th>Id</th>
                                <th>Name</th>
								<th>Email</th>
                                <th>Subject</th>
								<th>Timestamp</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<cfoutput>
	                            <cfloop array="#rc.messages#" index="message">
									<tr>
										<td><a href="#buildCustomURL('/admin/message')#/#message.id#">#message.id#</a></td>
	                                    <td>#message.name#</td>
	                                    <td>#message.email#</td>
										<td>#message.subject#</td>
										<td>#message.timestamp#</td>
										<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this message?" data-color="##ff0000" data-url="#buildCustomURL('/admin/message')#/#message.id#" data-type="warning"><i class="fas fa-trash"></i></a></td>
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
