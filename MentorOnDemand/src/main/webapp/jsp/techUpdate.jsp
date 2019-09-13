<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.util.*,com.example.MentorOnDemand.model.Technology,com.example.MentorOnDemand.model.Mentor"  pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/style.css"/>
  <style>
  
    table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
 background-color: #fff;
}
table#t01 th {
  background-color:  #1E90FF;
  color: white;
}
#excel
{
font-size : 30px;
text-align : center;
}

#select_text
{
font-size : 22px;
} 
.nav{
 height:150px;
 width:1000px;
}
 
  
  </style>
</head>
<body><div class="menu">
<h1 style="float:left">MENTOR ON DEMAND</h1>
  <a href="/logout"  style="text-decoration:none;float:right">LOGOUT</a> 
 

</div>

<center><h1>Admin Landing Page</h1></center>



<br>

<br>
<br>



<div style="margin:60px;z-index:-1">
<button class="button1" type="button" ><span><a href="/manageTech"  style="text-decoration:none; color:white">Add Technologies</a></span></button>
<button class="button1" type="submit" ><span><a href="/listDetail" style="text-decoration:none; color:white">List</span></button>

<button class="button1" type="submit" ><span><a href="/pay" style="text-decoration:none; color:white">Confirm status</a></span></button>
</div>
 
		<center>
	<div class="editDiv">

		<br>
		<br>
		<h3 align="center">Edit Technology Details</h3>
		<br> <br>
		<table align="center" cellpadding="10">
		<div style="font-weight:bold" class="thick">
			<form:form action="editTech" method="post"
				modelAttribute="tech" class="well form-horizontal">
				
							<%
								Technology t= (Technology) request.getAttribute("update");
							%>
				
				
				<tr>
					<td>Technology Id</td>
					<td>
				<form:input name="id" 
											value="<%=t.getId() %>" class="form-control"
											type="text" path="id" readonly="true" /></td>
											</tr>
				
				
				<tr>
					<td>Technology Name</td>
					<td><form:input name="" class="form-control" value="<%=t.getName() %>"
							placeholder="Technology Name" type="text" path="name"
							required="required" /> <small><form:errors
								path="name" cssClass="errormsg" /></small></td>
				</tr>


<tr>
					<td>Toc</td>
					<td><form:input name="" class="form-control"
						value="<%=t.getToc() %>"	placeholder="TOC" type="text" path="toc"
							required="required" /> <small><form:errors
								path="toc" cssClass="errormsg" /></small></td>
				</tr>

				<tr>
					<td>Start Time</td>
					<td><form:input name="" class="form-control" placeholder="Start time"
						value="<%=t.getStart_time() %>"	type="text" path="start_time" required="required" /> <small><form:errors
								path="start_time" cssClass="errormsg" /></small></td>
				</tr>
				

				<tr>
				<%
										ArrayList mentorDetails = (ArrayList) request.getAttribute("mentorList");
											Iterator itr = mentorDetails.iterator();
									%>
				
					<td>Mentor Id</td>
					<td><form:select path="mentor_id" class="form-control"
							maxlength="10" required="required">
							<option value="<%=t.getMentor_id() %>"  selected><%= t.getMentor_id() %></option>
							<%
											
													while (itr.hasNext()) {
														Mentor mentor = (Mentor) itr.next();
														int mentor_id = mentor.getMentor_id();
														
										%>
										<option value="<%=mentor_id %> ">
											<%=mentor_id%></option>

										<%
											}
										%>

						</form:select></td>
				</tr>
				<tr>
				

				<tr>
					<td></td>
					
				</tr>

				<tr>
					<td></td>
					<td>
						<button type="submit" id="updateTech" class="buttonCompany buttonCom"
							name="updateCompany">Update</button>
				
					</td>
				</tr>
			</form:form>
			</div>
			
		</table>

	</div>
	</center>