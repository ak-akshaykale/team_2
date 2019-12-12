<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>


<div class="fluid-container">
<div class="row">
<div class="col-3"></div>
<div class="col-6 bg-dark text-light d-flex justify-center align-items-center"style="height:100vh">



<form action="validate" method="post">

<div class="form-group">
    <label for="exampleInputEmail1">UserName</label>
    <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">password</label>
    <input type="password" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
  
  
  
    <button type="submit" class="btn btn-primary">LOGIN</button>
    <a href="registration.jsp">register</a>
  
  </form>



</body>
</html>