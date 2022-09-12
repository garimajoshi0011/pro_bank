<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-complaint">Add Complaint</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of TODO's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width=" 10%">Complaints To</th>
						<th width="10%">Complaints From</th>
						<th width="10%">Subject</th>
						<th width="10">Description</th>
						<th width="10%">Complain Date</th>
						<th width="10%">Status</th>
						<th width="40%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${complaints}" var="complaint">
						<tr>
							<td>${complaint.complaintsTo}</td>
							<td>${complaint.complaintsFrom}</td>
							<td>${complaint.subject}</td>
							<td>${complaint.description}</td>
							<td>${complaint.complaintsDate}</td>
							<td>${complaint.status}</td>
							<td>
							<a type="button" class="btn btn-success"
                            								href="/approve-complaint?id=${complaint.complaintId}">Approve</a>
							<a type="button" class="btn btn-success" href="/reject-complaint?id=${complaint.complaintId}">Reject</a>

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