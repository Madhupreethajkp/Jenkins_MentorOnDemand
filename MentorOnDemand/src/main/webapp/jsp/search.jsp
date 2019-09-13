<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  import="java.util.*,com.example.MentorOnDemand.model.Technology,com.example.MentorOnDemand.model.Mentor"     pageEncoding="ISO-8859-1"%>

 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
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
<br>
<br>
<center>

<b><h1>SEARCH PAGE</h1></b>
<div class="container">
<!-- <input type="text"  style="width:200px"/>&nbsp;&nbsp;&nbsp;
<input type="text" style="width:200px"/> -->
  </div>
  <div class="container" style="color:black" >
 
  <form:form method="post" action="/searchValidate" modelAttribute="tech">
        <%
								Technology t = (Technology) request.getAttribute("tech");
							%>
				
        
       
        
				<tr>
				<%
										ArrayList techDetails = (ArrayList) request.getAttribute("techList");
											Iterator itr = techDetails.iterator();
									%>
	<td><h3>Technology Name</h3></td>
					<td><form:select path="name" class="form-control"
							maxlength="10" required="required">
							<option value="<%=t.getName() %>"  selected><%=t.getName() %></option>
							
							
							
							
							
							<%

							while (itr.hasNext()) {
										Technology tr = (Technology) itr.next();
											String name= tr.getName();
											
							%>
							
							
										<option value="<%=name%> ">
											<%=name%></option>

										<%
											}
										%>
</form:select>
			</td>			
				</tr>
				
				<tr>
				<%
										ArrayList timeDetails = (ArrayList) request.getAttribute("timeList");
											Iterator itr1 = timeDetails.iterator();
									%>
	<td><h3>Start Time</h3></td>
					<td><form:select path="start_time" class="form-control"
							maxlength="10" required="required">
							<option value="<%=t.getStart_time() %>"  selected><%=t.getStart_time() %></option>
							
							
							
							
							
							<%

							while (itr1.hasNext()) {
										Technology tr1 = (Technology) itr1.next();
											String start_time= tr1.getStart_time();
											
							%>
						
							
										<option value="<%=start_time%> ">
											<%=start_time%></option>

										<%
									
									}
									%>

						</form:select></td>
				</tr>
				
				

<br>
<br>
 <td><a href="/searchValidate" class="btn btn-info btn-lg">Submit</a></td>

</form:form>
</div>
</center>
</body>
</html>