<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student details</title>

<style type="text/css">
.backgroundimg{
		       background-image: url('https://www.scalevp.com/sites/default/files/designbig.jpg');
		       background-size: cover;
		       background-position: center;
		       background-repeat: repeat;
		       
		}
		
body header{
			text-align: center;
			color: white;
			font-size: x-large;
}

section article, footer{
			height:200px;
			width:500px;
			border:2px   solid #a36ca6;
			padding:60px 30px;
			margin:0 auto;	
			margin-top:85px;
			text-align:center;
			font-family:"Cooper", sans-serif,Arial;
			background-color: #f7dcc3;	
			 box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			 opacity: 0.7;
		}
		 
</style>
</head>
<body class="backgroundimg">
<center>
<h1 style="color: #a80707; text-transform: uppercase;">Student list</h1><br>


	<table border="3" width="90%" cellpadding="3" style="text-align: center; background-position: center; background-size: cover;">
	<tr style="color: white; background-color: #8da832; "><th>Id</th><th>Name</th><th>Class</th><th>Subject</th><th>Gender</th><th>Contact</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="stud" items="${list}"> 
    <tr style="background-color: #7bd8e0;">
    <div class="navbar">
    <td>${stud.id}</td>
    <td>${stud.name}</td>
    <td>${stud.standard}</td>
    <td>${stud.subject}</td>
    <td>${stud.gender}</td>
    <td>${stud.contact}</td>
    <td><a style="text-decoration:none;color: #a80707; text-transform: uppercase;" href="editstud/${stud.id}">Edit</a></td>
    <td><a style="text-decoration:none;color:#a10202; text-transform: uppercase;"href="deletestud/${stud.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>

  <a style="text-decoration:none;color: #020b4a; text-transform: uppercase;"
   href="studform"><h3>ADD THE NEW STUDENT</a></h3> 
   
   
   <a style="text-decoration:none;color: #020b4a; text-transform: uppercase;"
   href="index"><h3>HOME PAGE</a></h3> 
   
 </div>
</center>
</body>
</html>