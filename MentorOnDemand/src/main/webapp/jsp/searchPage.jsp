<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  import="java.util.*,com.example.MentorOnDemand.model.Technology"    pageEncoding="ISO-8859-1"%>
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
  width:70%;
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

<center><h1>User Landing Page</h1></center>



<br>

<br>
<br>



<div style="margin:60px;z-index:-1">
<button class="button1" type="button" ><span><a href="/searchPage"  style="text-decoration:none; color:white">Search Trainings</a></span></button>
<button class="button1" type="submit" ><span><a href="/finalAccept" style="text-decoration:none; color:white">Current Trainings</span></button>
<button class="button1" type="submit" ><span><a href="/" style="text-decoration:none; color:white">Completed Trainings</span></button>

</div>
<center>
  <table id="t01" style="color:black">
              <tr>                     <center><h3>List of Technologies</h3></center>
    <th>Technology Id</th>                            
    <th>Technology Name</th>
    <th>TOC</th> 
    <th>Mentor Id</th>
    <th>Send Request</th>
    
  </tr>  
               <%
                  List techList=(List)request.getAttribute("searchPage");
                  System.out.println(techList);
              %>
              <%for(int i=0;i<techList.size();i++)
              {
	             Technology t = (Technology)techList.get(i);
              
	          %>
 
  <tr>
  <td><%= t.getId() %>
    <td><%= t. getName()%></td>
    <td><%= t. getToc()%></td>
   <td><%= t.getMentor_id() %>
    <td><a href="sendRequest?id=<%= t.getId() %>" class="btn btn-info btn-lg">Propose</a></td>
    
  </tr>
      <%  } %>
  <tr>
    
</table>
</center>
    </div>
    
                                 

</body>
</html>
