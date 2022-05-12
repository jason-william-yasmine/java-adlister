<%--
  MOD by IntelliJ IDEA.
  User: jasoncameron
  Date: 5/8/22
  Time: 2:25 PM

  FOOTER

--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
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
                    <h4>
                        <i class="fa-solid fa-list"></i>
                        Reviews
                    </h4>
                </div>
            </div>
        </div>
    </header>


    <%--MAIN--%>
    <section id="reviews" class="mt-4" >
        <div class="container">
            <div class="row">
                <%--LEFT--%>
                <div class="col-md-9">
                    <%--REVIEWS--%>
                    <%--FOR EACH LOOP WILL REPLACE THE FOLLOWING CARD WITH DB DATA--%>
                    <c:forEach var="review" items="${reviews}">
                        <div class="card border-0  overflow-hidden"
                             style="max-height: 170px">
                            <div class="row no-gutters">
                                <div class="col-sm-3">
                                    <img src="${review.thumb}"
                                         alt="alt text here"
                                         class="card-img-top">
                                </div>
                                <div class="col-sm-9">
                                    <div class="card-body">
                                        <div class="card-title">
                                            Tutorial Title: ${review.title}
                                        </div>

<%--                                        <div class="star-rating">--%>
<%--                                            Stars: ${review.rating}<br>--%>
<%--                                        </div>--%>
                                        <div>
                                            <p class="mt-2">
                                                <div class="star-out"></div>
                                            </p>
                                        </div>
                                        <div>
                                            <p class="mt-2">
                                                    ${review.review}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-12">
                                <div class="d-flex justify-content-end">
                                    <div style="margin-right: 15px">
                                        <span class="badge badge-pill badge-light">${review.cat}</span>
                                    </div>
                                    <form method="post" action="/index-home">
                                        <button
                                                class="btn btn-primary open-review mx-3"
                                                id="btn-review-${review.id}">
                                            Read More..
                                        </button>
                                        <input
                                                type="hidden"
                                                name="id"
                                                value="${review.id}">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <%--END OF CARD--%>
                </div>
                <%--RIGHT--%>
                <div class="col-md-3">
                    <!--CARD 01-->
                    <div class="card text-center bg-primary text-white mb-3">
                        <div class="card-body">
                            <h3>Reviews</h3>
                            <h4 class="display-4">
                                <i class="fas fa-pencil-alt"></i> ${rNumber}
                            </h4>
                            <form method="get" name="/index-home" class="form-inline my-2 mx-3 my-lg-0">
                                <input class="form-control bg-primary text-light" name="title" placeholder="Search Reviews">
                            </form>
                        </div>
                    </div>
                    <!--CARD 02-->
                    <div class="card text-center bg-success text-white mb-3">
                        <div class="card-body">
                            <h3>Categories</h3>
                            <h4 class="display-4">
                                <i class="fas fa-folder"></i>
                            </h4>
                            <form action="/index-home" method="GET">
                                <div class="form-group mt-3">
                                    <select  class="form-select mt-3 bg-success" name="cat" id="cat">
                                        <option selected> </option>
                                        <option value="html">HTML</option>
                                        <option value="css">CSS</option>
                                        <option value="javascript">JavaScript</option>
                                        <option value="bootstrap">BootStrap</option>
                                    </select>
                                </div>
                                <input type="submit" class="d-none btn btn-block btn-block btn-success mt-3 w-100" value="Search">
                            </form>
                        </div>
                    </div>
                    <!--CARD 03-->
                    <div class="card text-center bg-warning text-white mb-3">
                        <div class="card-body">
                            <h3>Users</h3>
                            <h4 class="display-4">
                                <i class="fas fa-users"></i>  ${uNumber}
                            </h4>
                            <a href="#" class="btn btn-outline-light btn-sm">View</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

    <script>
        const star${sessionScope.review.review}
        let starOut = '';
        switch(star${review.review}){
            case 0:
                starOut = '' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>';
                break;
            case 1:
                starOut = '' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>';
                break;
            case 2:
                starOut = '' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>';
                break;
            case 3:
                starOut = '' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>';
                break;
            case 4:
                starOut = '' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-solid fa-star"></i>';
                break;
            case 5:
                starOut = '' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>' +
                    '<i class="fa-regular fa-star"></i>';
                break;
        }

        $('.star-out').html(starOut);
        console.log(starOut)

    </script>


</body>
</html>
