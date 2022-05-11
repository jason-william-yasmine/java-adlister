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
    <h1><img src="${sessionScope.user.avatar}" alt="information">Welcome, ${sessionScope.user.username}!</h1>

</div>


    <%--Shows Reviews on profile --%>
    <c:forEach var="review" items="${reviews}">
        <c:if test="${sessionScope.user.id eq review.uid}">
            <div class="row no-gutters">
                <div class="col-sm-3">
                    <img src="${review.thumb}"
                         alt="alt text here"
                         class="card-img-top">
                </div>
                <h2>${review.title}</h2>
                <p>${review.review}</p>

                    <%--Edit Review--%>
                <form action="${pageContext.request.contextPath}/reviews/edit/${review.id}" method="get">
                    <button>Edit Review</button>
                </form>

                    <%--Delete Review--%>
                <form action="/reviews/delete" method="POST">
                    <button>Delete Review</button>
                    <input type="hidden" name="singleReview" value="${review.id}">
                </form>

            </div>
            <h2>${review.title}</h2>
            <p>${review.review}</p>

                <%--Edit Review--%>
            <form action="${pageContext.request.contextPath}/reviews/edit/${review.id}" method="get">
                <button>Edit Review</button>
            </form>

                <%--Delete Review--%>
            <form action="/reviews/delete" method="POST">
                <button>Delete Review</button>
                <input type="hidden" name="singleReview" value="${review.id}">
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
