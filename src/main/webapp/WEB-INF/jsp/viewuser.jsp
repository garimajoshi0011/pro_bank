<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">User's Detail</div>
				<div class="panel-body">
				<table>
                  <tr>
                    <td>User Name</td>
                    <td>${user.userName}</td>
                  </tr>
                   <tr>
                       <td>Email</td>
                        <td>${user.email}</td>
                    </tr>

                     <tr>
                          <td>Phone Number</td>
                          <td>${user.phoneNumber}</td>
                         </tr>

                     <tr>
                          <td>Address</td>
                          <td>${user.address}</td>
                      </tr>

                       <tr>
                           <td>Nationality</td>
                           <td>${user.nationality}</td>
                       </tr>

                        <tr>
                            <td>Gender</td>
                            <td>${user.gender}</td>
                        </tr>

                        <tr>
                             <td>Date of Birth</td>
                             <td>${user.dob}</td>

                        </tr>
                  </table

					<form:form method="post" modelAttribute="user">
						<form:hidden path="userId" />




					  <button type="Close" class="btn btn-success">Close</button>
					          </form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>