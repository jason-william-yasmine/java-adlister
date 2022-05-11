<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body class="d-flex flex-column min-vh-100">

    <%--NAV--%>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>

    <%--HEADER--%>
    <header id="main-header" class="py-2 bg-white">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h>
                        <i class="fa-solid fa-user"></i>
                        Profile
                    </h>
                </div>
            </div>
        </div>
    </header>


    <%--MAIN--%>
    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <%--Shows Reviews on profile --%>

    <c:forEach var="review" items="${reviews}">
        <c:if test="${sessionScope.user.id eq user.id}">
            <div class="col-md-6">
                <h2>${review.title}</h2>
                <p>${review.review}</p>

         <%--Edit Review--%>
                <form action="${pageContext.request.contextPath}/reviews/edit/${review.id}" method="get">
                    <button>Edit Ad</button>
                </form>

         <%--Delete Review--%>
                <form action="/reviews/delete" method="POST">
                    <button>Delete Ad</button>
                    <input type="hidden" name="singleReview" value="${review.id}">

    <c:forEach var="review" items="${sessionScope.reviews}">
        <c:if test="${sessionScope.user.id eq review.uid}">
            <div class="col-md-6">
                <h2>${review.title}</h2>


                <p>${review.review}</p>


                <form action="${pageContext.request.contextPath}/review/edit/${review.id}" method="get">
                    <button>Edit Review</button>
                </form>

                    <%--Delete An Ad --%>
                <form action="/reviews/delete" method="POST">
                    <button>Delete Ad</button>
                    <input type="hidden" name="singleAd" value="${review.id}">

                </form>

                    <%--Shows the Single ad with extra info --%>
                <form action="/reviews/single" method="get">
                    <button>Click for more details!</button>

                    <input type="hidden" name="singleReview" value="${review.id}">

                    <input type="hidden" name="singleAd" value="${review.id}">

                </form>
            </div>
        </c:if>
    </c:forEach>





    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>


</body>
</html>
