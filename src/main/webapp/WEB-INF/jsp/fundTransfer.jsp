<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add User</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="fundTransfer">
						<form:hidden path="customerId" />
						<fieldset class="form-group">
							<form:label path="debitAccountNumber">Debit Account Number</form:label>
							<form:input path="debitAccountNumber" type="text" class="form-control"
								required="required" />
							<form:errors path="debitAccountNumber" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
                            <form:label path="creditAccountNumber">CreditAccountNumber</form:label>
                        						<form:input path="creditAccountNumber" type="text" class="form-control"
                        							required="required" />
                        						<form:errors path="creditAccountNumber" cssClass="text-warning" />
                        						</fieldset>

                        <fieldset class="form-group">
                             <form:label path="date">Date</form:label>
                             <form:input path="date" type="text" class="form-control"
                                 required="required" />
                        <form:errors path="date" cssClass="text-warning" />
                                    </fieldset>

                      <fieldset class="form-group">
                              <form:label path="balance">Balance</form:label>
                              <form:input path="balance" type="text" class="form-control"
                                   required="required" />
                              <form:errors path="balance" cssClass="text-warning" />
                                  </fieldset>




                        <fieldset class="form-group">
                                <form:label path="amount">Credit Amount</form:label>
                               <form:input path="amount" type="text" class="form-control"
                                     required="required" />
                               <form:errors path="amount" cssClass="text-warning" />
                                       </fieldset>
<fieldset class="form-group">
                            <form:label path="creditAccountNumber">CreditAccountNumber</form:label>
                        						<form:input path="creditAccountNumber" type="text" class="form-control"
                        							required="required" />
                        						<form:errors path="creditAccountNumber" cssClass="text-warning" />
                        						</fieldset>

                        <fieldset class="form-group">
                             <form:label path="date">Date</form:label>
                             <form:input path="date" type="text" class="form-control"
                                 required="required" />
                        <form:errors path="date" cssClass="text-warning" />
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