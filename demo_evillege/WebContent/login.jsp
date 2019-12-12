<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Socionet</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row mt-2">
			<div class="col-12 d-flex justify-content-center h3">LOGIN</div>
		</div>

		<div class="col-6 bg-secondary"></div>
		<div class="col-6 bg-secondary d-flex align-items-center justify-content-center " style="height: 80vh">
			<form action="loginserver" method="post">
				<div class="row mt-2">
					<div class="col-6">
						<input type="text" name="uname" placeholder="Enter user name">
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-6">
							<input type="password" name="upass" placeholder="Enter password">
					</div>		
					<div class="col-4"></div>
						<div class="col-4"> <input type="submit"
							value="Login">
					</div>
					<div class="col-4 h4 bg-dark">
					<a href="singup.jsp" role="button">New User</a>
					</div>
					</div>
			</form>
			</div>
			<%
				if(session.getAttribute("STATUS")!=null)
				{
					String msg =(String)session.getAttribute("STATUS");
					if(msg.equals("Invalid User!"))
					{
					%>
						<div class="col-4 bg-danger h4">
							<%=session.getAttribute("STATUS") %>
						</div>
						</div>
					<%
					}
				}
			%>
</body>
</html>