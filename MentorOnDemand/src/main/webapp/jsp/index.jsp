<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css"/>
<title>Insert title here</title>
<style>
/*  body  {
  background-image: url("images/h1.jfif");
  background-repeat:repeat;
  postion:bottom;
 
 
  
}  */

.button {
  border-radius: 4px;
  background-color: #778899;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}
.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}
.button:hover span {
  padding-right: 25px;
}
.button:hover span:after {
  opacity: 1;
  right: 0;
}
h1 {
  color: #778899;
}

body {background-color: #C0D8F4;}
</style>
</head>
<body>
<br>


<div >

<center><b><h1 style="color:black">MENTOR ON DEMAND</h1></b>

</center>

</div>
<br><br>
<div class="container" style="color:">
<center>  
<form action="/userRegister" method="get"><button class="button" style="background-color: #1E90FF"; ><span>USER</span></button><br/><br/></form>
<br><br>
<form action="/adminRegister" method="get"><button class="button"  style="background-color: #1E90FF"><span>ADMIN</span></button></form>
<br><br>
<form action="/addMentor" method="get"><button class="button"  style="background-color: #1E90FF"><span>MENTOR</span></button></form>
<br>
<br>
<a href="/search"><input type="submit" value="Search" class="button"  style="background-color: #1E90FF" /></a></center>

</div>

</body>
</html>