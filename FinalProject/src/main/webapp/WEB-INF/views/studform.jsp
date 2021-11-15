<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student</title>
<style type="text/css">
.backgroundimg{
		       background-image: url('https://www.scalevp.com/sites/default/files/designbig.jpg');
		       background-size: cover;
		       background-position: center;
		       background-repeat: no-repeat;
		       
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
<h1  style="color: #85053c; text-transform: uppercase;">ADD NEW STUDENT</h1><h3>
       <form:form method="post" action="save">  
      	<table  >  
         <tr>  
        <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         <tr>  
       <td>Class :</td>  
          <td><form:input path="standard" /></td>
         </tr> <br>
         <tr>  
         <td>Subject :</td>  
          <td><form:input path="subject" /></td>
         </tr> 
          <tr>  
         <td>Gender :</td>  
          <td><form:input path="gender" /></td>
         </tr> 
          <tr>  
         <td>Contact No :</td>  
          <td><form:input path="contact" /></td>
         </tr> 
         <tr>  
          <td> </td> 
          <td><br><input type="submit" value="Save Student details" /></td>  
         </tr>  
        </table>  
       </form:form> 
       </center></h3>

</body>
</html>