 <%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-user">Add User</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of User's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width=" 14%">User Name</th>
						<th width="14">Email</th>
						<th width="14%">Phone Number</th>
						<th width="14%">Nationality</th>
						<th width="8%">Gender</th>
						<th width="8%">Status</th>
						<th width="30%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td><a href="/view-user?id=${user.userId}">${user.userName}</a></td>
							<td>${user.email}</td>
							<td>${user.phoneNumber}</td>
							<td>${user.nationality}</td>
							<td>${user.gender}</td>
							<td>${user.status}</td>

							<td>
							<a type="button" class="btn btn-success"
                            href="/approve-user?id=${user.userId}">Approve</a>

							<a type="button" class="btn btn-success"
							 href="/reject-user?id=${user.userId}">Reject</a>

							<a type="button" class="btn btn-success"
								href="/update-user?id=${user.userId}">Update</a>

							<a type="button" class="btn btn-warning"
								href="/delete-user?id=${user.userId}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>