<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add Complaint</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="complaint">
						<form:hidden path="complaintId" />
						<fieldset class="form-group">
							<form:label path="complaintType">Complaint Type</form:label>
							<form:select path="complaintType" items="${complainttype}"/>
							<form:errors path="complaintType" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
                        		<form:label path="complaintFrom"> From</form:label>
                        		<form:input path="complaintFrom" type="text" class="form-control"
                        			required="required" />
                        		<form:errors path="complaintFrom" cssClass="text-warning" />
                        				</fieldset>

                        <fieldset class="form-group">
                                  <form:label path="subject">Subject</form:label>
                                  <form:input path="subject" type="text" class="form-control"
                                      required="required" />
                                  <form:errors path="subject" cssClass="text-warning" />
                                         </fieldset>

                         <fieldset class="form-group">
                         							<form:label path="description">Description</form:label>
                         							<form:input path="description" type="text" class="form-control"
                         								required="required" />
                         							<form:errors path="description" cssClass="text-warning" />
                         						</fieldset>

                          <fieldset class="form-group">
                          							<form:label path="complaintDate">Date</form:label>
                          							<form:input path="complaintDate" type="Date" class="form-control"
                          								required="required" />
                          							<form:errors path="complaintDate" cssClass="text-warning" />
                          						</fieldset>




						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>