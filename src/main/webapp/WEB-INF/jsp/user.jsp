<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add User</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="user">
						<form:hidden path="userId" />
						<fieldset class="form-group">
							<form:label path="userName">User Name</form:label>
							<form:input path="userName" type="text" class="form-control"
								required="required" />
							<form:errors path="userName" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
                            <form:label path="password">Password</form:label>
                        							<form:input path="password" type="password" class="form-control"
                        								required="required" />
                        							<form:errors path="password" cssClass="text-warning" />
                        						</fieldset>

                        						<fieldset class="form-group">
                                                                        							<form:label path="email">Email</form:label>
                                                                        							<form:input path="email" type="email" class="form-control"
                                                                        								required="required" />
                                                                        							<form:errors path="email" cssClass="text-warning" />
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
                                                                          							<form:label path="nationality">Nationality</form:label>
                                                                          							<form:input path="nationality" type="text" class="form-control"
                                                                          								required="required" />
                                                                          							<form:errors path="nationality" cssClass="text-warning" />
                                                                          						</fieldset>

                                                  <fieldset class="form-group">
                                                                                                     <form:label path="gender">Gender</form:label>
                                                                                                     <form:input path="gender" type="text" class="form-control"
                                                                                                          required="gender" />
                                                                                                     <form:errors path="gender" cssClass="text-warning" />
                                                                                                   </fieldset>


	                                             <fieldset class="form-group">
							                                                                            <form:label path="dob">Date of Birth</form:label>
							                                                                            <form:input path="dob" type="date" class="form-control"
								                                                                            required="required" />
							                                                                            <form:errors path="dob" cssClass="text-warning" />
						                                                                                    </fieldset>
					                	         <button type="submit" class="btn btn-success">Save</button>
					                                </form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>