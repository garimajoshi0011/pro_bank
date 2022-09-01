<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add User</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="complain">
						<form:hidden path="complaintId" />
						<fieldset class="form-group">
							<form:label path="complaintsTo">Complaints To</form:label>
							<form:input path="complaintsTo" type="text" class="form-control"
								required="required" />
							<form:errors path="complaintsTo" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
                        							<form:label path="complaintsFrom">Complaints From</form:label>
                        							<form:input path="complaintsFrom" type="text" class="form-control"
                        								required="required" />
                        							<form:errors path="complaintsFrom" cssClass="text-warning" />
                        						</fieldset>

                        <fieldset class="form-group">
                                                	 <form:label path="Subject">Subject</form:label>
                                                	 <form:input path="subject" type="text" class="form-control"
                                                		 required="required" />
                                                	 <form:errors path="subject" cssClass="text-warning" />
                                                 </fieldset>

                         <fieldset class="form-group">
                         							<form:label path="complaint">Complaint</form:label>
                         							<form:input path="complaint" type="text" class="form-control"
                         								required="required" />
                         							<form:errors path="complaint" cssClass="text-warning" />
                         						</fieldset>

                          <fieldset class="form-group">
                          							<form:label path="complaintsDate">Complaint Date</form:label>
                          							<form:input path="complaintsDate" type="text" class="form-control"
                          								required="required" />
                          							<form:errors path="complaintsDate" cssClass="text-warning" />
                          						</fieldset>




						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>