<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/loan">Add Loan</a>
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
						<th width="8%">Loan Type</th>
						<th width="8%">Loan Amount</th>
						<th width="8%">Duration</th>
						<th width="8%">Name</th>
						<th width="8%">Address</th>
						<th width="8%">Income</th>
						<th width="8%">Phone Number</th>
						<th width="8%">Email</th>
						<th width="8%">Profession</th>
						<th width="8%">Request Date</th>
						<th width="8%">Status</th>
						<th width="12%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${loans}" var="loan">
						<tr>
							<td>${loan.loanType}</td>
							<td>${account.loanAmount}</td>
							<td>${account.duration}</td>
							<td>${account.name}</td>
							<td>${account.address}</td>
							<td>${account.income}</td>
							<td>${account.phoneNumber}</td>
							<td>${account.email}</td>
							<td>${account.profession}</td>
							<td>${account.requestDate}</td>
							<td>${account.status}</td>



							<td>
							<a type="button" class="btn btn-success"
                            								href="/approve-loan?id=${loan.loanId}">Approve</a>
							<a type="button" class="btn btn-success" href="/reject-loan?id=${loan.loanId}">Reject</a>

							<a type="button" class="btn btn-success"
								href="/update-todo?id=${todo.id}">Update</a>
							<a type="button" class="btn btn-warning"
								href="/delete-todo?id=${todo.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>