<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.util.*,com.example.MentorOnDemand.model.Technology,com.example.MentorOnDemand.model.Mentor"  pageEncoding="ISO-8859-1"%>
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

<center><h1>Admin Landing Page</h1></center>



<br>

<br>
<br>



<div style="margin:60px;z-index:-1">
<button class="button1" type="button" ><span><a href="/manageTech"  style="text-decoration:none; color:white">Technologies</a></span></button>
<button class="button1" type="submit" ><span><a href="/listDetail" style="text-decoration:none; color:white">List</span></button>

<button class="button1" type="submit" ><span><a href="/pay" style="text-decoration:none; color:white">Confirm status</a></span></button>
</div>
 
 <div class="container" style="color:black" >
 
	<form:form method="POST" action="/addTech" modelAttribute="tech">
	<center><h3 style="color:black">Create New Technologies</h3></center>
	<b>
	<div class="row" style="color:black">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="name">Technology Name</label>
               <div class="col-md-7">
                    <form:input type="text" path="name" id="name" class="field"/>
                    <div class="has-error">
                        <form:errors path="name" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
        
	
        <div class="row" style="color:black">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="toc">TOC</label>
               <div class="col-md-7">
                    <form:input type="text" path="toc" id="toc" class="field"/>
                    <div class="has-error">
                        <form:errors path="toc" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
        <%
								Technology t = (Technology) request.getAttribute("tech");
							%>
				
        
        
        
				<tr>
				<%
										ArrayList mentorDetails = (ArrayList) request.getAttribute("mentorList");
											Iterator itr = mentorDetails.iterator();
									%>
				
					<td>Mentor Id</td>
					<td><form:select path="mentor_id" class="form-control"
							maxlength="10" required="required">
							<option value="<%=t.getMentor_id() %>"  selected><%=t.getMentor_id() %></option>
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
         <div class="row" style="color:black">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="start_time">Start Time</label>
               <div class="col-md-7">
                    <form:input type="text" path="start_time" id="start_time" class="field"/>
                    <div class="has-error">
                        <form:errors path="start_time" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
 
  <center> <div> <input type="submit" style="margin:50px;" value="Submit" />&nbsp;&nbsp;&nbsp;
  
 </div>
</center>
</b>
</form:form>
  </div>
  
 

</body>
</html>
