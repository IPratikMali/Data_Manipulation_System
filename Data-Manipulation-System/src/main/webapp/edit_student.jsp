<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.StudentDAO"%>
<%@page import="com.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<%@ include file="all_css.jsp" %>
</head>
<body>
<div class="container p-4">
		<div class ="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						 <p class="fs-3 text-center"> Edit Student</p>
	
	
	<% 
	int id = Integer.parseInt(request.getParameter("id"));
	StudentDAO dao = new StudentDAO(DBConnect.getConn());
	Student s = dao.getStudentById(id);
	%>
	
	
	
	<form action="update" method="post">
	<div class="mb-3">
    <label class="form-label">Name</label>
    <input name="name" type="text" value="<%= s.getName() %>" class="form-control ">
  </div>
  
  <div class="mb-3">
    <label class="form-label">PRN</label>
    <input name="prn" type="text" value="<%= s.getPrn() %>" class="form-control ">
  </div>
  
  <div class="mb-3">
    <label class="form-label">COURSE</label>
    <input name="course" type="text" value="<%= s.getAddress() %>" class="form-control ">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Address</label>
    <input name="address" type="text" value="<%= s.getCourse() %>" class="form-control ">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Email</label>
    <input name="email" type="email" value="<%= s.getEmail()%>" class="form-control ">
  </div>
  
  <input type="hidden" name="id"  value=<%= s.getId()%>>
  
  <button type="submit" class="btn btn-primary col-md-12">update</button>
</form>

					</div>
				</div>
			</div>
		</div>
	</div>
