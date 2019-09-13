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
<form:form method="POST" action="/addUser" modelAttribute="user">
 <div class="container" >
 
	<div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="firstName">First Name</label>
               <div class="col-md-7">
                    <form:input type="text" path="firstName" placeholder="First name" class="field"/>
                    <div class="has-error">
                        <form:errors path="firstName" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="lastName">Last Name</label>
               <div class="col-md-7">
                    <form:input type="text" path="lastName" placeholder="Last name" class="field"/>
                    <div class="has-error">
                        <form:errors path="lastName" class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
        
	
          
    <div class="row">
            <div class="form-group col-md-12">
               <label class="col-md-3 control-lable" for="email">User Name</label>
               <div class="col-md-7">
                    <form:input type="text" path="email" id="email"  placeholder=" Enter Email as UserName" class="field"/>
                    <div class="has-error">
                        <form:errors path="email" class="text-danger"/>
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
               <label class="col-md-3 control-lable" for="mobileNumber">Mobile Number</label>
               <div class="col-md-7">
                    <form:input type="text" path="mobileNumber" id="mobileNumber"  placeholder="Mobile Number" class="field"/>
                    <div class="has-error">
                        <form:errors path="mobileNumber" class="text-danger"/>
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
        
         
         

 <center>   <input type="submit" value="Register" class="registerbtn1" style="background-color: #1E90FF;" /></center>
   </div>
 <!-- <div class="container signin"> -->
 <center>
    <p>Already have an account? <a href="/userLogin">Sign in</a>.</p></center>
  </div>

</form:form>
  
 
</div>
</body>
</html>
