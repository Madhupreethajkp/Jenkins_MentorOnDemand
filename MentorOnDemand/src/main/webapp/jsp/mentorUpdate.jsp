<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.util.*,com.example.MentorOnDemand.model.Mentor" pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<center><h1>Mentor Landing Page</h1></center>



<br>

<br>
<br>



<div style="margin:60px;z-index:-1">
<button class="button1" type="button" ><span><a href="/listRequest"  style="text-decoration:none; color:white">Accept User Request</a></span></button>
<button class="button1" type="submit" ><span><a href="/updateMentor" style="text-decoration:none; color:white">Update Profile</span></button>
<button class="button1" type="submit" ><span><a href="/viewStatus" style="text-decoration:none; color:white">View Status</span></button>


</div>
 

		<center>
	<div class="editDiv">

		<br>
		<br>
		<h3 align="center">Edit Your Profile</h3>
		<br> <br>
		<table align="center" cellpadding="10">
		<div style="font-weight:bold" class="thick">
			<form:form action="editMentor" method="post"
				modelAttribute="mentor" class="well form-horizontal">
				
							<%
								Mentor m = (Mentor) request.getAttribute("update");
							%>
				
				
				<tr>
					<td>Mentor Id</td>
					<td>
				<form:input name="mentor_id" 
											value="<%=m.getMentor_id() %>" class="form-control"
											type="text" path="mentor_id" readonly="true" /></td>
											</tr>
				
				
				<tr>
					<td>Mentor Name</td>
					<td><form:input name="mentorName" class="form-control" value="<%=m.getMentorName() %>"
							placeholder="Mentor Name" type="text" path="mentorName"
							required="required" /> <small><form:errors
								path="mentorName" cssClass="errormsg" /></small></td>
				</tr>


<tr>
					<td>Password</td>
					<td><form:input name="" class="form-control"
						value="<%=m.getPassword() %>"	placeholder="Password" type="text" path="password"
							required="required" /> <small><form:errors
								path="password" cssClass="errormsg" /></small></td>
				</tr>

				<tr>
					<td>Linkedin Url</td>
					<td><form:input name="" class="form-control" placeholder="Linkedin Url"
						value="<%=m.getLinkedin_url() %>"	type="text" path="linkedin_url" required="required" /> <small><form:errors
								path="linkedin_url" cssClass="errormsg" /></small></td>
				</tr>
				<tr>
					<td>Date</td>
					<td><form:input name="" class="form-control"
							value = "<%=m.getDateTime() %>" placeholder="Date" type="text"
							path="dateTime" required="required" /> <small><form:errors
								path="dateTime" cssClass="errormsg" /></small></td>
				</tr>
				
<tr>
					<td>Registration Code</td>
					<td><form:input name="" class="form-control"
						value="<%=m.getRegCode() %>"	placeholder="Registration Code" type="text" path="regCode"
							required="required" /> <small><form:errors
								path="regCode" cssClass="errormsg" /></small></td>
				</tr>
<tr>
					<td>Experience</td>
					<td><form:input name="" class="form-control"
						value="<%=m.getExperience() %>"	placeholder="Experience" type="text" path="experience"
							required="required" /> <small><form:errors
								path="experience" cssClass="errormsg" /></small></td>
				</tr>

				<tr>
					<td></td>
					
				</tr>

				<tr>
					<td></td>
					<td>
						<a href="/editMentor?mentor_id">
						<button type="submit" id="updateCompany" class="buttonCompany buttonCom"
							name="updateMentor">Update</button></a>
				
					</td>
				</tr>
			</form:form>
			</div>
			
		</table>

	</div>
	</center>
</body>
</html>