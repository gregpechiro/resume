<!DOCTYPE html>
<html>
	<head>
		<#include "../includes/head.ftlh"/>
		<#include "../includes/admin/head.ftlh"/>

		<title>Message</title>
	</head>
	<body>
		<#include "../includes/admin/navbar.ftlh"/>
		<div class="container">
			<div class="row">
				<div class="col">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Id</th>
                                <th>Name</th>
								<th>Email</th>
                                <th>Subject</th>
								<th>Date</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
	                            <#list messages?sort_by("timestamp")?reverse as message>
									<tr data-id="${(message.id)!}" class="message pointer ${(!message.opened) ? string(' table-secondary font-weight-bold', '') }">
										<td>${(message.id)!}</td>
	                                    <td>${(message.name)!}</td>
	                                    <td>${(message.email)!}</td>
										<td>${(message.subject)!}</td>
										<td>${(message.timestamp?number_to_datetime)!}</td>
										<td><a class="pointer text-danger confirm-action" data-message="Are you sure you would like to do delete this message?" data-color="##ff0000" data-url="#buildCustomURL('/admin/message')#/#message.id#" data-type="warning"><i class="fas fa-trash"></i></a></td>
									</tr>
								</#list>
						</tbody>
					</table>
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
			var baseURL = '/admin/message/rest/';
			</script>
			<#include "../includes/scripts.ftlh"/>
			<#include "../includes/admin/scripts.ftlh"/>
			<!-- Custom JS -->
			<script src="/static/js/message.js"></script>
		</cfoutput>

		<script type="text/javascript">
			confirm.yes = function(btn) {
				$('<form method="post" action="' + btn.attr('data-url') + '"></form>').appendTo('body').submit();
			}
		</script>

	</body>
</html>
