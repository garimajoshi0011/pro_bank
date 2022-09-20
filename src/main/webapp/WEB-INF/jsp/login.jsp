<%@ include file="common/header.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
				<div class="panel-heading"/>

<form action="/login" method="post">
  <!-- Email input -->
  <div class="form-outline mb-4">
   <label class="form-label" for="userName">User Name</label>
    <input type="text" placeholder="Enter Username" name="userName"  class="form-control" required>
  </div>
<br>
  <!-- Password input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form2Example2">Password</label>
    <input class="form-control" type="password" placeholder="Enter Password" name="password" required>
  </div>

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
      <div class="form-check">
     </div>
    </div>
<br>
    <div class="col">
      <!-- Simple link -->
      <a href="#!"></a>
    </div>
  </div>

  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4">Login</button>

</form>



    <div>
 		<a type="button" href="/signin">Sign in</a>
 	</div>

		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>