<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/account">Add Account</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Account's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="20%">Account Type</th>
						<th width="20%">Balance</th>
						<th width="20%">Status</th>
						<th width="40%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${accounts}" var="account">
						<tr>
							<td>${account.accountType}</td>
							<td>${account.balance}</td>
							<td>${account.status}</td>
							<td>
							<a type="button" class="btn btn-success"
                            href="/approve-account?id=${account.accountId}">Approve</a>

							<a type="button" class="btn btn-success"
							 href="/reject-account?id=${account.accountId}">Reject</a>

							<a type="button" class="btn btn-success"
								href="/update-account?id=${account.accountId}">Update</a>
							<a type="button" class="btn btn-warning"
								href="/delete-account?id=${account.accountId}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>