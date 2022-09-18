<%@ include file="common/header.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
<img src="/images/ProBank.png"/>
				<div class="panel-heading">Login</div>

					<form class="modal-content animate" action="/login" method="post">
                        <div class="container">
                          <label for="uname"><b>Username</b></label>
                          <input type="text" placeholder="Enter Username" name="userName" required>

                          <label for="psw"><b>Password</b></label>
                          <input type="password" placeholder="Enter Password" name="password" required>

                          <button type="submit">Login</button>
                          <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                          </label>
                        </div>

                        <div class="container" style="background-color:#f1f1f1">
                          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                          <span class="psw">Forgot <a href="#">password?</a></span>
                        </div>
                      </form>

    <div>
 		<a type="button" class="btn btn-primary btn-md" href="/add-user">Add User</a>
 	</div>

		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>