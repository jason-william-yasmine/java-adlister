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
            <div class="form-group">
                <label for="username" class="mb-1">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email" class="mb-1">Email</label>
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
                <label for="path" class="mb-1">Path(Not Required)</label>
                <input id="path" name="path" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password" class="mb-1">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password" class="mb-1">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <div class="form-group mt-3">
                <label for="profile-pix-url" class="mb-1">Profile Picture</label>
                <select id="profile-pix-url" class="form-select mt-3" name="profile-pix-url">
                    <option selected value="-1">  </option>
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


    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

</body>
</html>
