<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.util.*,com.example.MentorOnDemand.model.Training"  pageEncoding="ISO-8859-1"%>
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

<center><h1>Mentor Landing Page</h1></center>



<br>

<br>
<br>


<div style="margin:60px;z-index:-1">
<button class="button1" type="button" ><span><a href="/listRequest"  style="text-decoration:none; color:white">Accept User Request</a></span></button>
<button class="button1" type="submit" ><span><a href="/listMent" style="text-decoration:none; color:white">List Mentor</span></button>
<button class="button1" type="submit" ><span><a href="/viewStatus" style="text-decoration:none; color:white">View Status</span></button>


</div>
 
<div class="container" style="color:black">
                 
  
  
          
              
                
                                
                          <!-- Modal content-->
                          
                                  <table id="t01">
              <tr>   
                               <center><h3>List of Trainings</h3></center>
                               <th>Training Id</th> 
    <th>Technology Id</th>                            
    <th>Technology Name</th>
    <th>TOC</th> 
    <th>Mentor Id</th>
    <th>Status</th>
    <th>Accept</th>
    <th>Reject</th>
   
  </tr>  
               <%
                  List techList=(List)request.getAttribute("listRequest");
                  System.out.println(techList);
              %>
              <%for(int i=0;i<techList.size();i++)
              {
	             Training t = (Training)techList.get(i);
              
	          %>
 
  <tr>
  <td><%= t.getTraining_id() %>
  <td><%= t.getId() %>
    <td><%= t. getName()%></td>
    <td><%= t. getToc()%></td>
   <td><%= t.getMentor_id() %>
   <td><%= t.getStatus() %>
    <td><a href="techAccept?training_id=<%= t.getTraining_id() %>" class="btn btn-info btn-lg">Accept</a></td>
      <td><a href="techReject?training_id=<%= t.getTraining_id() %>" class="btn btn-info btn-lg">Reject</a></td>
   
  </tr>
      <%  } %>
  <tr>
    
</table>
    </div>
    
                                 
              
</body>
</html>
