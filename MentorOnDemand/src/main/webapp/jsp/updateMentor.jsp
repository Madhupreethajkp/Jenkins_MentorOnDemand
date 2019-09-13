<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
                                  <table id="t01" style="color:black">
<center style="color:black"><h3>Your Profile Details</h3></center>
<tr>
 <th>Mentor Id</th>
 <th>Mentor Name</th>
 <th>Password</th>
 <th>linkedin_url</th>
 <th>Date</th>
 <th>Registration Code</th>
 <th>Experience</th>
 </tr>
 
 <%-- <tr>
 
 <td>  </td>
 <td>  </td>
 <td><%= request.getParameter("password") %></td>
 <td><%= request.getParameter("linkeding_url") %></td>
 <td><%= request.getParameter("dateTime") %></td>
 
 <td><%= request.getParameter("regCode") %></td>
 <td><%= request.getParameter("experience") %></td>
 </tr>
  --%>
</table>
</center>
</body>
</html>
