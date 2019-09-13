<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   import="java.util.*,com.example.MentorOnDemand.model.Mentor"   pageEncoding="ISO-8859-1"%>
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
<button class="button1" type="submit" ><span><a href="/listMent" style="text-decoration:none; color:white">List Mentors</span></button>
<button class="button1" type="submit" ><span><a href="/viewStatus" style="text-decoration:none; color:white">View Status</span></button>


</div>
 
<div class="container" style="color:black">
                 
  
  
          
              
                
                                
                          <!-- Modal content-->
                          
                                  <table id="t01">
              <tr>                     <center><h3>List of Mentors</h3></center>
    <th>Mentor Id</th>                            
    <th>Mentor Name</th>
    <th>Linkedin Url</th> 
   
     <th>Date</th>
    <th>Code</th>
    <th>Experience</th>
    
  </tr>  
               <%
                  List mentorList=(List)request.getAttribute("listMent");
                  System.out.println(mentorList);
              %>
              <%for(int i=0;i<mentorList.size();i++)
              {
	            Mentor m = (Mentor)mentorList.get(i);
              
	          %>
 
  <tr>
  <td><%= m.getMentor_id() %>
    <td><%= m. getMentorName()%></td>
    <td><%= m. getLinkedin_url()%></td>
  
      <td><%= m.getDateTime() %>
       <td><%= m.getRegCode() %>
    <td><%= m.getExperience() %>
    <%--  <td><a href="techUpdate?id=<%= u.getUser_id() %>" class="btn btn-info btn-lg">Block</a></td>
    <td><a href="techDelete?id=<%= u.getUser_id() %>" class="btn btn-info btn-lg">Unblock</a></td>  --%>
  </tr>
      <%  } %>
  <tr>
    
</table>
    </div>
    
                                 
              

</body>
</html>
