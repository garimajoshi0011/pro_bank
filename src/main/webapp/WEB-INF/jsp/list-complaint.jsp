<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/addcomplaint">Add Complaint</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Complain's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="10%">Complaint Type</th>
						<th width="10%">Subject</th>
						<th width="10%">From</th>
						<th width="10">Description</th>
						<th width="10%"> Date</th>
						<th width="10%">Status</th>
						<th width="40%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${complaints}" var="complaint">
						<tr>
							<td>${complaint.complaintType}</td>
							<td>${complaint.subject}</td>
							<td>${complaint.description}</td>
							<td>${complaint.complaintFrom}</td>
							<td>${complaint.complaintDate}</td>
							<td>${complaint.status}</td>
							<td>
							<a type="button" class="btn btn-success"
                            	href="/approve-complaint?id=${complaint.complaintId}">Approve</a>

							<a type="button" class="btn btn-success"
							href="/reject-complaint?id=${complaint.complaintId}">Reject</a>

							<a type="button" class="btn btn-success"
								href="/update-complaint?id=${complaint.complaintId}">Update</a>

							<a type="button" class="btn btn-warning"
								href="/delete-complaint?id=${complaint.complaintId}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>