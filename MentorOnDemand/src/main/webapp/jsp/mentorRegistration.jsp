<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib  uri="http://www.springframework.org/tags" prefix="spring"  %>
    <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<title>Insert title here</title>
</head><style>

body{
background-color:#C0D8F4;
}
</style>
<body>



   <div class="form">
    <center><h1>Registration</h1></center>
    <p></p>
<form:form method="POST" action="/addMentor" modelAttribute="mentor">
 <div class="container" >
 
	<div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="mentorName">Mentor Name</label>
               <div class="col-md-7">
                    <form:input type="text" path="mentorName" placeholder="Enter name" class="field"/>
                    <div class="has-error">
                        <form:errors path="mentorName" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
        
      
	<div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="password">Password</label>
               <div class="col-md-7">
                    <form:input type="password" path="password" id="password"  placeholder="Password" class="field"/>
                    <div class="has-error">
                        <form:errors path="password" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
          
    <div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="linkedin_url">Linkedin Url</label>
               <div class="col-md-7">
                    <form:input type="text" path="linkedin_url" id="linkedin_url"  placeholder=" Enter Linkedin Url" class="field"/>
                    <div class="has-error">
                        <form:errors path="linkedin_url" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
 
    
   <div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="dateTime">Date</label>
               <div class="col-md-7">
                    <form:input type="text" path="dateTime" id="dateTime"  placeholder="Enter Date" class="field"/>
                    <div class="has-error">
                        <form:errors path="dateTime" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>    
    <div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="regCode">Registration Code</label>
               <div class="col-md-7">
                    <form:input type="text" path="regCode" id="regCode"  placeholder="regCode" class="field"/>
                    <div class="has-error">
                        <form:errors path="regCode" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
        
       <div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="experience">Years Of Experience</label>
               <div class="col-md-7">
                    <form:input type="experience" path="experience" id="experience"  placeholder="Years of Experience" class="field"/>
                    <div class="has-error">
                        <form:errors path="experience" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>  
         

 <center>   <input type="submit" value="Register" class="registerbtn1" style="background-color: #1E90FF;" /></center>
   </div>
 <!-- <div class="container signin"> -->
 <center>
    <p>Already have an account? <a href="/mentorLogin">Sign in</a>.</p></center>
  </div>

</form:form>
  
 
</div>
</body>
</html>
