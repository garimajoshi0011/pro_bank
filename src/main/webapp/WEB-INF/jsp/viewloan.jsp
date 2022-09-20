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
				<div class="panel-heading">Add Loan</div>
				<div class="panel-body">

				<table>
                                  <tr>
                                    <td>Loan Type</td>
                                    <td>${loan.loanType}</td>
                                  </tr>
                                   <tr>
                                       <td>Loan Amount</td>
                                        <td>${loan.loanAmount}</td>
                                    </tr>
                                   <tr>
                                       <td>Duration (In Years)</td>
                                       <td>${loan.duration}</td>
                                   </tr>

                                     <tr>
                                          <td>Phone Number</td>
                                          <td>${loan.phoneNumber}</td>
                                     </tr>

                                     <tr>
                                          <td>Address</td>
                                          <td>${user.address}</td>
                                      </tr>

                                       <tr>
                                           <td>Name</td>
                                           <td>${loan.name}</td>
                                       </tr>

                                        <tr>
                                            <td>Income</td>
                                            <td>${loan.income}</td>
                                        </tr>

                                        <tr>
                                             <td>Profession</td>
                                             <td>${loan.profession}</td>

                                        </tr>
                                        <tr>
                                             <td>Request Date</td>
                                             <td>${loan.requestDate}</td>

                                        </tr>
                                  </table

					<form:form method="post" modelAttribute="loan">
						<form:hidden path="loanId" />





						<button type="Close" class="btn btn-success">Close</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>