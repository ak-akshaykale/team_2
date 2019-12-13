<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

	<div class="container-fluid">
	<div class="row">
	<div class="col-3"></div>
	<div class="col-6">
		<h1>LOGIN PAGE</h1>
		<form method="post" action="login">
					<div class="form-group">
						<label for="exampleInputUser">Username</label> 
						<input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword">Password</label> <input type="password" name="password" class="form-control" id="exampleInputPassword1">
					</div>
					
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
	</div>
	</div>
	</div>

</body>
</html>