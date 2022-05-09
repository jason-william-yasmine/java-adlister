<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Review" />
    </jsp:include>
</head>
<body class="d-flex flex-column min-vh-100">

    <%--NAV--%>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <%--MAIN--%>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/reviews/create" method="post">
            <%--Tut Name--%>
                <div class="form-group">
                    <label for="tut-name">Tutorial Name</label>
                    <input id="tut-name" name="tut-name" class="form-control" type="text">
                </div>
            <%--Tut URL--%>
                <div class="form-group">
                    <label for="tut-url">Enter URL for Tutorial</label>
                    <input type="text" id="tut-url" class="form-control" name="tut-url">
                </div>
            <%--Tut Cost--%>
                <div class="form-group">
                    <label for="tut-cost">Tutorial Cost</label>
                    <input type="text" id="tut-cost" class="form-control" name="tut-cost">
                </div>
            <%--Tut Rating--%>
                <div class="form-group">
                    <label for="tut-rating">Rating</label>
                    <input type="text" id="tut-rating" class="form-control" name="tut-rating">
                </div>
            <%--Tut Description--%>
                <div class="form-group">
                    <label for="tut-description">User Review</label>
                    <textarea type="text" id="tut-description" class="form-control" name="tut-review"></textarea>
                </div>
            <%--Tut Description--%>
                div.

            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>

    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />


</body>
</html>
