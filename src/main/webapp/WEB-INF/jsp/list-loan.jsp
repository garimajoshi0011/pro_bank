<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/loan">Add Loan</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Loan's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
					    <th width="10%">Name</th>
						<th width="10%">Type</th>
						<th width="10%">Amount</th>
						<th width="10%">Duration</th>
						<th width="10%">Income</th>
						<th width="10%">Date</th>
						<th width="10%">Status</th>
						<th width="30%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${loans}" var="loan">
						<tr>
						    <td><a href="/view-loan?id=${loan.loanId}">${loan.name}</td>
							<td>${loan.loanType}</td>
							<td>${loan.loanAmount}</td>
							<td>${loan.duration}</td>
							<td>${loan.income}</td>
							<td>${loan.requestDate}</td>
							<td>${loan.status}</td>

<td>
							<a type="button" class="btn btn-success"
                            href="/approve-loan?id=${loan.loanId}">Approve</a>

							<a type="button" class="btn btn-success"
							 href="/reject-loan?id=${loan.loanId}">Reject</a>

							<a type="button" class="btn btn-success"
								href="/update-loan?id=${loan.loanId}">Update</a>

							<a type="button" class="btn btn-warning"
								href="/delete-loan?id=${loan.loanId}">Delete</a></td>
								</tr>
</c:forEach>





				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>