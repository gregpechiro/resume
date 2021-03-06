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
					<div class="table-responsive">
						<table class="table table-hover">
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
										<tr data-id="#message.id#" class="message pointer #(!message.opened ? ' table-secondary font-weight-bold' : '')#">
											<td>#message.id#</td>
		                                    <td>#message.name#</td>
		                                    <td>#message.email#</td>
											<td>#message.subject#</td>
											<td>#dateTimeFormat(createObject("java","java.util.Date").init(message.timestamp), "d/m/yy h:nn tt")#</td>
											<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this message?" data-color="##ff0000" data-url="#buildCustomURL('/admin/message')#/#message.id#" data-type="warning"><i class="fas fa-trash"></i></a></td>
										</tr>
									</cfloop>
								</cfoutput>
							</tbody>
						</table>
					</div
				</div>
			</div>
		</div>

		<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="messageModalTitle" aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="messageModalTitle"></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" class="text-white">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-12" id="messageModalName"></div>
							<div class="col-12" id="messageModalEmail"></div>
						</div>
						<div class="row">
							<div class="col-12">
								<pre id="messageModalBody" class="unstyled"></pre>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

        <cfoutput>
			<script type="text/javascript">
			var baseURL = '#buildCustomURL('/admin/rest/message/')#';
			</script>
			#view('includes/scripts')#
			#view('includes/admin/scripts')#
			<!-- Custom JS -->
			<script src="#rc.baseURL#static/js/message.js"></script>
		</cfoutput>

		<script type="text/javascript">
			confirm.yes = function(btn) {
				$('<form method="post" action="' + btn.attr('data-url') + '"></form>').appendTo('body').submit();
			}
		</script>

	</body>
</html>
