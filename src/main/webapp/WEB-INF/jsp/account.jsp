<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add User</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="account">
						<form:hidden path="accountId" />
						<fieldset class="form-group">

							<form:label path="accountType">Account Type</form:label>
						<form:select path="accountType" items="${accountType}"/>
							<form:errors path="accountType" cssClass="text-warning" />
						</fieldset>


                       <fieldset class="form-group">
                                                	<form:label path="balance">Balance</form:label>
                                                    <form:input path="balance" type="text" class="form-control"
                                                			required="required" />
                                                	<form:errors path="balance" cssClass="text-warning" />
                                                		</fieldset>




						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>