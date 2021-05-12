<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<title>custom login page</title>
<style>
  .f{
  color: red;
  }

</style>
</head>

<body>
	<h2>--MY CUSTOM LOGINPAGE--</h2>

	<form:form
		action="${pageContext.request.contextPath }/authenticateTheUrl"
		method="POST">


		<c:if test="${param.error !=null }">

			<i class="f"> SORRY ! yoy enter wrong name/passeord . </i>
		</c:if>

		<p>
			User Name:<input type="text" name="username" />
		</p>


		<p>
			password:<input type="password" name="password" />
		</p>

		<input type="submit" value="login" />


	</form:form>


</body>

</html>