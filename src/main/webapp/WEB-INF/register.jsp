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
                        <i class="fa-solid fa-user-gear"></i>
                        Register
                    </h>
                </div>
            </div>
        </div>
    </header>


    <%--MAIN--%>
    <div class="container w-50">
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
<%--            <div class="form-group">--%>
<%--                <label for="gh-url">GitHub</label>--%>
<%--                <input id="gh-url" name="gh-url" class="form-control" type="text">--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="profile-pix-url">Profile Picture URL</label>--%>
<%--                <input id="profile-pix-url" name="profile-pix-url" class="form-control" type="text">--%>
<%--            </div>--%>
            <div class="form-group">
                <label for="path">Path(Not Required)</label>
                <input id="path" name="path" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>


    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

</body>
</html>
