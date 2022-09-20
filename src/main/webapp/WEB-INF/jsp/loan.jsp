<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add Loan</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="loan">
						<form:hidden path="loanId" />


						<fieldset class="form-group">
							<form:label path="loanType">Loan Type</form:label>
							 <form:select path="loanType" items="${loantype}"/>
							<form:errors path="loanType" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
                            <form:label path="loanAmount">Loan Amount</form:label>
                        		<form:input path="loanAmount" type="text" class="form-control"
                        			required="required" />
                        			 <form:errors path="loanAmount" cssClass="text-warning" />
                        				</fieldset>

                        <fieldset class="form-group">
                            <form:label path="duration">Duration (In Years)</form:label>
                                   <form:select path="duration" items="${duration}"/>
                                <form:errors path="duration" cssClass="text-warning" />
                                      </fieldset>

                        <fieldset class="form-group">
                           <form:label path="phoneNumber">PhoneNumber</form:label>
                            <form:input path="phoneNumber" type="text" class="form-control"
                              required="required" />
                         <form:errors path="phoneNumber" cssClass="text-warning" />
                                      </fieldset>

                       <fieldset class="form-group">
                         <form:label path="address">Address</form:label>
                         <form:input path="address" type="text" class="form-control"
                             required="required" />
                         <form:errors path="address" cssClass="text-warning" />
                               </fieldset>


                        <fieldset class="form-group">
                          <form:label path="name">Name</form:label>
                         <form:input path="name" type="text" class="form-control"
                                required="required" />
                         <form:errors path="name" cssClass="text-warning" />
                               </fieldset>

                        <fieldset class="form-group">
                        <form:label path="income">Income</form:label>
                        <form:input path="income" type="text" class="form-control"
                            required="required" />
                        <form:errors path="income" cssClass="text-warning" />
                              </fieldset>


                     <fieldset class="form-group">
                     <form:label path="profession">Email</form:label>
                     <form:input path="profession" type="text" class="form-control"
                        required="required" />
                     <form:errors path="profession" cssClass="text-warning" />
                            </fieldset>

                      <fieldset class="form-group">
                      <form:label path="requestDate">Request Date</form:label>
                      <form:input path="requestDate" type="date" class="form-control"
                             required="required" />
                      <form:errors path="requestDate" cssClass="text-warning" />
                               </fieldset>





						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>