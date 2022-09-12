<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/fundTransfer">Add fundTransfer</a>
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
						<th width="10%">Debit Account Number</th>
						<th width="10%">Credit Account Number</th>
						<th width="10%">Date</th>
						<th width="10%">Balance</th>
						<th width="10%">Amount</th>
						<th width="10%">Status</th>
						<th width="40%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${fundsTransfer}" var="fundTransfer">
						<tr>
							<td>${fundTransfer.debitAccountNumber}</td>
							<td>${fundTransfer.creditAccountNumber}</td>
							<td>${fundTransfer.date}</td>
							<td>${fundTransfer.balance}</td>
							<td>${fundTransfer.amount}</td>
							<td>${fundTransfer.status}</td>



						<td>
						<a type="button" class="btn btn-success"
                        href="/approve-fundTransfer?id=${fundTransfer.fundTransferId}">Approve</a>

						<a type="button" class="btn btn-success"
						href="/reject-fundTransfer?id=${fundTransfer.fundTransferId}">Reject</a>

						<a type="button" class="btn btn-success"
						href="/update-fundTransfer?id=${fundTransfer.fundTransferId}">Update</a>

						<a type="button" class="btn btn-warning"
						href="/delete-fundTransfer?id=${fundTransfer.fundTransferId}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>