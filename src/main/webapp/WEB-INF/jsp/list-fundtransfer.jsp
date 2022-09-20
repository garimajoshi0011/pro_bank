<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/fundtransfer">Add Fund Transfer</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Fund Transfer's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="12%">Debit Account Number</th>
						<th width="16%">Transfer Amount</th>
						<th width="14%">Date</th>
						<th width="14%">Balance</th>
						<th width="14%">Status</th>
						<th width="30%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${fundsTransfer}" var="fundTransfer">
						<tr>
							<td>${fundTransfer.debitAccountNumber}</td>
							<td>${fundTransfer.transferAmount}</td>
							<td>${fundTransfer.date}</td>
							<td>${fundTransfer.balance}</td>
							<td>${fundTransfer.status}</td>



						<td>
						<a type="button" class="btn btn-success"
                        href="/approve-fundtransfer?id=${fundTransfer.fundTransferId}">Approve</a>

						<a type="button" class="btn btn-success"
						href="/reject-fundtransfer?id=${fundTransfer.fundTransferId}">Reject</a>

						<a type="button" class="btn btn-success"
						href="/update-fundtransfer?id=${fundTransfer.fundTransferId}">Update</a>

						<a type="button" class="btn btn-warning"
						href="/delete-fundtransfer?id=${fundTransfer.fundTransferId}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>