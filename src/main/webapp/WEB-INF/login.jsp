<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
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
                        <i class="fa-solid fa-arrow-right-to-bracket"></i> Login
                    </h>
                </div>
            </div>
        </div>
    </header>

    <%--MAIN--%>
    <div class="container">
        <form action="/login" method="POST" class="mt-4">
            <div class="form-group ">
                <label for="username" class="mb-1">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password" class="mb-1">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>

    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

</body>
</html>
