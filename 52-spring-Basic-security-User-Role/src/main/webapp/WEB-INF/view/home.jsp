<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> welcome here 99995555====---------------------- </h1>
  a
  
  <hr>  <!-- display user role and name -->
  <p>
  USER:<security:authentication property="principal.username"/>
  <br><br>
   ROLE(S):<security:authentication property="principal.authorities"/>
  
  </p>
  
  </hr>
  
  
    <hr> 
  
<!--   add LOGOUT button   -->
	<form:form
		action="${pageContext.request.contextPath }/logout"
		method="POST">

		<input type="submit" value="logout" />


	</form:form>
  </hr>
</body>
</html>