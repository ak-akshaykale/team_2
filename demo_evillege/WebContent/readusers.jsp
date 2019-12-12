<%@page import="in.socionet.server.User"%>
<%@page import="java.util.List"%>
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
<%
	List<User> user=null;
	if(session.getAttribute("USER_LIST")!=null)
	user=(List<User>)session.getAttribute("USER_LIST");
	else
	response.sendRedirect("index.jsp");
%>
<body>
	<div class="container">
		<div class="row mt-2">
			<div class="col-12 d-flex justify-content-center h3">Users</div>
		</div>
		<div class="row">
		<%
				String colorname="secondary";
				if(user!=null)
				{
					for(User u:user)
					{
						if(colorname.equals("secondary"))
							colorname="dark";
						else
							colorname="secondary";
					%>	
				<div class="col-6 d-flex justify-content-center text-light h4">
					<div class="col-12 mt-3 bg-<%=colorname %> ">
						<div class="row mt-2">
						Username::<%=u.getUname() %>
						</div>
						<div class="row mt-2">
						Password::<%=u.getUpass() %>
						</div>
						<div class="row mt-2">
						MobileNo::<%=u.getUmobileno() %>
						</div>
						<div class="row mt-2">
						Email ID::<%=u.getUemail() %>
						</div>
					</div>
				</div>
		<%
					}
				}
		%>				
		</div>
	</div>
</body>
</html>