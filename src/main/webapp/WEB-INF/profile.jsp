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
    <%--ACTIONS--%>
    <section id="actions" class="py-4 mb-4 bg-light">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <a href="/index-home" class="btn btn-light btn-block w-100">
                        <i class="fas fa-arrow-left"></i>&nbsp;&nbsp; Back To Dashboard
                    </a>
                </div>
                <div class="col-md-3">

                    <a href="/reviews/create" class="btn btn-success btn-block w-100">
                        <i class="fa-solid fa-plus"></i>&nbsp;&nbsp; Add Review
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="btn btn-warning btn-block w-100">
                        <i class="fa-solid fa-user-pen"></i>&nbsp;&nbsp; Edit Account
                    </a>
                </div>
            </div>
        </div>
    </section>

    <%--PROFILE--%>
    <section id="profile">
        <div class="container">
            <div class="row">
                <%--LEFT--%>
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-header">
                            <h4>Your Reviews</h4>
                        </div>
                        <table class="table table-striped">
                            <thead class="thead-dark">
                            <tr>
                                <th>Rating</th>
                                <th>Title</th>
                                <th>Link</th>
                                <th>Edit</th>
                                <th>Read More...</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%--REVIEWS--%>
                            <c:forEach var="review" items="${reviews}">
                                <c:if test="${sessionScope.user.id eq review.uid}">
                                <tr>
                                    <td>Stars: ${review.rating}</td>
                                    <td>${review.title}</td>
                                    <%--Link--%>
                                    <td>
                                        <a href="${review.tutorialURL}"
                                           class="btn btn-primary d-flex justify-content-center align-items-center"
                                           style="height: 40px; width: 100px;">
                                            <i class="fa-solid fa-link"></i>&nbsp; Visit
                                        </a>
                                    </td>
                                    <%--Edit--%>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/reviews/edit/${review.id}"
                                           class="btn btn-warning d-flex justify-content-center align-items-center"
                                           style="height: 40px; width: 100px;">
                                            <i class="fa-solid fa-pen-to-square"></i>&nbsp; Edit
                                        </a>
                                    </td>
                                    <%--Details--%>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/reviews/single"
                                           class="btn btn-success d-flex justify-content-center align-items-center"
                                           style="height: 40px; width: 100px;">
                                            <i class="fas fa-angle-double-right"></i>&nbsp; Details
                                        </a>

                                    </td>
                                </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <%--RIGHT--%>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-header">
                            <h3>${sessionScope.user.username}</h3>
                        </div>
                        <div class="body">
                            <img src="${sessionScope.user.avatar}" alt="Avatar Picture" class="d-block img-fluid mb-3 p-3">
                        </div>
                        <div class="card-title p-3">
                            <strong>Email:</strong><br>
                            ${sessionScope.user.email}
                        </div>
                        <p class="p-3">
                            <strong>Bio: </strong><br>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores doloremque ea mollitia obcaecati provident qui vel voluptatum. Aspernatur ducimus est facere fugiat inventore, laudantium maxime minus officiis provident quibusdam quidem.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>







<%--    ADD AFTER  --%>

<%--    <div class="container">--%>
<%--        <h1><img src="${sessionScope.user.avatar}" alt="information">Welcome, ${sessionScope.user.username}!</h1>--%>

<%--    </div>--%>

    <%--Shows Reviews on profile --%>
<%--    <c:forEach var="review" items="${reviews}">--%>
<%--        <c:if test="${sessionScope.user.id eq review.uid}">--%>
<%--            <div class="row no-gutters">--%>
<%--                <div class="col-sm-3">--%>
<%--                    <img src="${review.thumb}"--%>
<%--                         alt="alt text here"--%>
<%--                         class="card-img-top">--%>
<%--                </div>--%>
<%--                <h2>${review.title}</h2>--%>
<%--                <p>${review.review}</p>--%>

<%--                    &lt;%&ndash;Edit Review&ndash;%&gt;--%>
<%--                <form action="${pageContext.request.contextPath}/reviews/edit/${review.id}" method="get">--%>
<%--                    <button>Edit Review</button>--%>
<%--                </form>--%>

<%--                    &lt;%&ndash;Delete Review&ndash;%&gt;--%>
<%--                <form action="/reviews/delete" method="POST">--%>
<%--                    <button>Delete Review</button>--%>
<%--                    <input type="hidden" name="singleReview" value="${review.id}">--%>
<%--                </form>--%>

<%--            </div>--%>
<%--            <h2>${review.title}</h2>--%>
<%--            <p>${review.review}</p>--%>

<%--                &lt;%&ndash;Edit Review&ndash;%&gt;--%>
<%--            <form action="${pageContext.request.contextPath}/reviews/edit/${review.id}" method="get">--%>
<%--                <button>Edit Review</button>--%>
<%--            </form>--%>

<%--                &lt;%&ndash;Delete Review&ndash;%&gt;--%>
<%--            <form action="/reviews/delete" method="POST">--%>
<%--                <button>Delete Review</button>--%>
<%--                <input type="hidden" name="singleReview" value="${review.id}">--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </c:if>--%>
<%--</c:forEach>--%>





    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>


</body>
</html>
