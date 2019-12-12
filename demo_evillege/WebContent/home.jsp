<html>
<body>
<div class="row mt-2">
<div class="col-1">
</div>

<div class="col-12 d-flex justify-content-center h3">HOME</div>
		<div class="col-5 bg-primary d-flex justify-content-left h3">Users</div>
		<div class="row">
		<div class="col-12  d-flex justify-content-right h5">
		<div class="text-light">
		<form action="homeserver">
		<input type="text" name="logout" hidden value="100">
		<input type="submit"class="btn-info" value="Logout">
		</form>
		</div>
		</div>
		</div>
	<jsp:include page="homeheader.jsp"></jsp:include>
	<%

			if(session.getAttribute("VREQ")!=null)
			{
				if(session.getAttribute("VREQ").equals("100"))
				{%>
					<jsp:include page="readusers.jsp"></jsp:include>
				<%}
			}
	%>
	</div>
</html>