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
							<form:label path="loanType">${loan.loanType}</form:label>

						</fieldset>

						<fieldset class="form-group">
                            <form:label path="loanAmount">Loan Amount</form:label>
                        		<form:label path="loanAmount">${loan.loanAmount}</form:label>

                        				</fieldset>

                        <fieldset class="form-group">
                            <form:label path="duration">Duration (In Years)</form:label>
                                   <form:label path="duration">${loan.duration}</form:label>

                                      </fieldset>

                        <fieldset class="form-group">
                           <form:label path="phoneNumber">PhoneNumber</form:label>
                            <form:label path="phoneNumber">${loan.phoneNumber}</form:label>

                                      </fieldset>

                       <fieldset class="form-group">
                         <form:label path="address">Address</form:label>
                       <form:label path="address">${loan.address}</form:label>

                               </fieldset>


                        <fieldset class="form-group">
                          <form:label path="name">Name</form:label>
                         <form:label path="name">${loan.name}</form:label>

                               </fieldset>

                        <fieldset class="form-group">
                        <form:label path="income">Income</form:label>
                          <form:label path="income">${loan.income}</form:label>

                              </fieldset>


                     <fieldset class="form-group">
                     <form:label path="profession">Profession</form:label>
                       <form:label path="profession">${loan.profession}</form:label>

                            </fieldset>

                      <fieldset class="form-group">
                      <form:label path="requestDate">Request Date</form:label>
                    <form:label path="requestDate">${loan.requestDate}</form:label>

                               </fieldset>





						<button type="submit" class="btn btn-success">Close</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>