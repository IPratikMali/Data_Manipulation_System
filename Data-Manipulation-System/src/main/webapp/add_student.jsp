<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Data Manipulation System</title>
<%@ include file="all_css.jsp" %>
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container p-4">
		<div class ="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						 <p class="fs-3 text-center"> Add Student</p>
	
	
	 <c:if test="${not empty succMsg }">
	 <p class="text-center text-success" > ${succMsg } </p>
	 <c:remove var="succMsg"/>
	 </c:if>
	 
	  <c:if test="${not empty errorMsg }">
	 <p class="text-center text-success" > ${errorMsg } </p>
	 <c:remove var="errorMsg"/>
	 </c:if>
	
	
	<form action="register" method="post">
	
	<div class="mb-3">
    <label class="form-label">Name</label>
    <input name="name" type="text" class="form-control ">
  </div>
  
  <div class="mb-3">
    <label class="form-label">PRN</label>
    <input name="prn" type="text" class="form-control ">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Address</label>
    <input name="address" type="text" class="form-control ">
  </div>
  
  <div class="mb-3">
    <label class="form-label">COURSE</label>
    <input name="course" type="text" class="form-control ">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Email</label>
    <input name="email" type="email" class="form-control ">
  </div>
  
  <button type="submit" class="btn btn-primary col-md-12">Submit</button>
</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>>