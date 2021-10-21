<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
  <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
</head>
<body>
<center>
<h1>Add New Student</h1><h3>
       <form:form method="post" action="save">  
      	<table >  
         <tr>  
        <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         <tr>  
       <td>Class :</td>  
          <td><form:input path="standard" /></td>
         </tr> 
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
          <td><input type="submit" value="Save Student details" /></td>  
         </tr>  
        </table>  
       </form:form> 
       </center></h3>
</body>
</html>