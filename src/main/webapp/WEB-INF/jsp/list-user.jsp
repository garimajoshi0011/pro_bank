 <%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-user">Add User</a>
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
						<th width=" 10%">User Name</th>
						<th width="10%">password</th>
						<th width="10">Email</th>
						<th width="10%">Phone Number</th>
						<th width="10%">Address</th>
						<th width="10%">Nationality</th>
						<th width="10%">Gender</th>
						<th width="10%">Date Of Birth</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.userName}</td>
							<td>${user.password}</td>
							<td>${user.email}</td>
							<td>${user.phoneNumber}</td>
							<td>${user.address}</td>
							<td>${user.nationality}</td>
							<td>${user.gender}</td>
							<td>${user.dateofbirth}</td>
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