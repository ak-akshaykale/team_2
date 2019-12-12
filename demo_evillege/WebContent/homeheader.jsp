<%@page import="in.socionet.server.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<%
	User user=null;
	int rn=0; 
	if(session.getAttribute("VCODE")==null)
	{
		session.invalidate();
		response.sendRedirect("index.jsp");
		rn=1;
	}
	else
		user=(User)session.getAttribute("VCODE");
%>
<body>
<div class="container">
		<%if(rn==0){ %>
		<div class="col-6 bg-secondary">
			Hello !
			<%=user.getUname() %></div>
			
			
		
		<div class="row">
		<%
				String colorname="secondary";
					%>	
				<div class="col-6 d-flex justify-content-center text-light h4">
					<div class="col-12 mt-3 bg-<%=colorname %> ">
						<div class="row mt-2  text-light d-flex justify-content-center">
						<b><i><u>Profile::</u></i></b><br>
						</div>
						<div class="row mt-2">
						NAME::<%=user.getUname() %>
						</div>
						<div class="row mt-2">
						EmailID::<%=user.getUemail()%>
						</div>
						<div class="row mt-2">
						MobileNumber:: <%=user.getUmobileno()%>

						</div>
					</div>
				</div>
		<%
		%>				
		</div>
	</div>
	<%} %>