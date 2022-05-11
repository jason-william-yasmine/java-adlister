<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body class="d-flex flex-column min-vh-100">

<%--NAV--%>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />



<%--HEADER--%>
<header id="main-header" class="py-2 bg-primary text-white">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h>
                    <i class="fa-solid fa-user-gear"></i> Register
                </h>
            </div>
        </div>
    </div>
</header>


<%--MAIN--%>
<div class="container w-50">
    <form action="/register" method="post" class="mt-4">
        <%--username--%>
        <div class="form-group">
            <label for="username" class="mb-1">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${sessionScope.registerUsername}">
        </div>
        <%--email--%>
        <div class="form-group">
            <label for="email" class="mb-1">Email</label>
            <input id="email" name="email" class="form-control" type="email" value="${sessionScope.registerEmail}">
        </div>
        <%--password--%>
        <div class="form-group">
            <label for="password" class="mb-1">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm-password" class="mb-1">Confirm Password</label>
            <input id="confirm-password" name="confirm-password" class="form-control" type="password">
        </div>
        <%--avatar--%>
        <div class="form-group mt-3">
            <label for="avatar" class="mb-1">Profile Picture</label>
            <select id="avatar" class="form-select mt-3" name="avatar">
                <option selected value="/img/avatars/Black-01.png">  </option>
                <option value="/img/avatars/Black-01.png">Black</option>
                <option value="/img/avatars/Blue-01.png">Blue️</option>
                <option value="/img/avatars/Brown-01.png">Brown️</option>
                <option value="/img/avatars/DarkGreen-01.png">Dark Green️</option>
                <option value="/img/avatars/DarkRed-01.png">Dark Red️</option>
                <option value="/img/avatars/Green-01.png">Green</option>
                <option value="/img/avatars/LightBlue-01.png">Light Blue</option>
                <option value="/img/avatars/Orange-01.png">Orange</option>
                <option value="/img/avatars/Pink-01.png">Pink</option>
                <option value="/img/avatars/Yellow-01.png">Yellow</option>
            </select>
        </div>
        <input type="submit" class="btn btn-block btn-block btn-primary mt-3 w-100">
    </form>
</div>
//
<%--FOOT--%>
<jsp:include page="/WEB-INF/partials/footer.jsp" />

<%--SCRIPTS--%>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />

<script>
    <c:if test="${param.error != null}">alert("Something went wrong, try again!!!")</c:if>
</script>

</body>
</html>
