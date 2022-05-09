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
                    <h>
                        <i class="fa-solid fa-list"></i>
                        Reviews
                    </h>
                </div>
            </div>
        </div>
    </header>


    <%--MAIN--%>
    <section id="reviews" class="mt-4" >
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <%--REVIEWS--%>
                    <%--FOR EACH LOOP WILL REPLACE THE FOLLOWING CARD WITH DB DATA--%>
                    <div class="card border-0 mb-5"
                         style="height: 170px">
                        <div class="row no-gutters">
                            <div class="col-sm-3">
                                <img src="img/tut-thumbs/YouTube.png"
                                     alt="Youtube Logo"
                                     class="img-fluid rounded">
                            </div>
                            <div class="col-sm-9">
                                <div class="card-body">
                                    <div class="card-title">
                                        Tutorial Title
                                    </div>
                                    <div class="star-rating">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                    </div>
                                    <p class="mt-2">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati perspiciatis praesentium quia sequi. At debitis dolore et illo ipsa officiis optio perferendis placeat quam quas rem repellendus, sapiente totam veniam...
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--END OF CARD--%>
                    <%--FOR EACH LOOP WILL REPLACE THE FOLLOWING CARD WITH DB DATA--%>
                    <div class="card border-0 mb-3"
                         style="height: 170px">
                        <div class="row no-gutters">
                            <div class="col-sm-3">
                                <img src="img/tut-thumbs/BitDegree.png"
                                     alt="BitDegree Logo"
                                     class="img-fluid rounded">
                            </div>
                            <div class="col-sm-9">
                                <div class="card-body">
                                    <div class="card-title">
                                        Tutorial Title
                                    </div>
                                    <div class="star-rating">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                    </div>
                                    <p class="mt-2">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati perspiciatis praesentium quia sequi. At debitis dolore et illo ipsa officiis optio perferendis placeat quam quas rem repellendus, sapiente totam veniam...
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--END OF CARD--%>
                </div>
            </div>
        </div>
    </section>




    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />

</body>
</html>
