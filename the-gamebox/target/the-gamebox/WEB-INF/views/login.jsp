<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<!-- Login Form -->

<div class="container" id="sign">
	<div class="page-header text-primary">
		<h1>Login</h1>
	</div>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" class="form-horizontal" action="<c:url value="/j_spring_security_check" />" method="post">
                
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                
                <div class="form-group">
                    <label class="control-label col-sm-2" for="username">User: </label>
                    <div class="col-sm-10">
                    <input type="text" id="username" name="j_username" class="form-control" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="control-label col-sm-2" for="password">Password:</label>
                    <div class="col-sm-10">
                    <input type="password" id="password" name="j_password" class="form-control" />
                    </div>
                </div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
                		<input type="submit" value="Login" class="btn btn-info">
					</div>
				</div>
				
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                
            </form>  <!-- end of form -->   

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>