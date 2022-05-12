<%--
  Created by IntelliJ IDEA.
  User: yasminerico
  Date: 5/11/22
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Review"/>
    </jsp:include>
</head>
<body class="d-flex flex-column min-vh-100">
    <%--NAV--%>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>

    <%--HEAD--%>
    <header id="main-header" class="py-2 bg-primary text-white">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5>
                        <i class="fa-solid fa-pen-to-square"></i>
                        Edit Review
                    </h5>
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
                    <a href="/profile" class="btn btn-light btn-block w-100">
                        <i class="fas fa-arrow-left"></i>&nbsp;&nbsp; Back To Dashboard
                    </a>
                </div>
                <div class="col-md-9">
                <%--Nothing here at the moment--%>
                </div>
            </div>
        </div>
    </section>

    <section id="edit-review">
        <div class="container">
            <div class="row">
                <%--LEFT--%>
                <div class="col-md-9">
                    <%--EDIT FUNCTIONS--%>
                    <div class="container mt-4">
                        <form action="/reviews/edit" method="post">
                            <input type="hidden" name="reviewToUpdate" value="${sessionScope.reviewObject}">
                            <%--title--%>
                            <div class="form-group">
                                <label class="mb-1" for="title"> Title:</label>
                                <input class="form-control" id="title" type="text" name="title" value="${sessionScope.review.title}">
                            </div>
                            <%--thumb--%>
                            <div class="form-group">
                                <div class="form-group mt-3">
                                    <label for="thumb" class="mb-1">Where Tutorial Comes From</label>
                                    <select id="thumb" class="form-select" name="thumb">
                                        <option selected>  </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/BitDegree.png">
                                            BitDegree
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/CodeAvengers.png">
                                            CodeAvengers
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/Codecademy.png">
                                            Code Academy
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/CodeConquest.png">
                                            CodeConquest
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/Coursera.png">
                                            Coursera
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/EvatoTuts.png">
                                            EvatoTuts
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/FutureLearn.png">
                                            Future Learn
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/GeeksForGeeks.png">
                                            Geeks for Geeks
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/Khan.png">
                                            Khan
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/LinkedIn.png">
                                            LinkedIn Learning
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/MIT.png">
                                            MIT
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/Skillcrush.png">
                                            Skill Crush
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/SoloLearn.png">
                                            SoloLearn
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/TheOdenProject.png">
                                            The Oden Project
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/Udemy.png">
                                            Udemy
                                        </option>
                                        <option
                                                value="http://localhost:8080/img/tut-thumbs/YouTube.png">
                                            YouTube
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <%--tutorialURL--%>
                            <div class="form-group mt-3">
                                <label for="tutorialURL" class="mb-1">Enter URL for Tutorial</label>
                                <input type="text" id="tutorialURL" class="form-control" name="tutorialURL" value="${sessionScope.review.tutorialURL}">
                            </div>
                            <%--rating--%>
                            <div class="form-group mt-3">
                                <label for="rating">Rating</label>
                                <select id="rating" class="form-select mt-1" name="rating">
                                    <option selected value="-1">  </option>
                                    <option value="0">🙅</option>
                                    <option value="1">⭐️</option>
                                    <option value="2">⭐️⭐️</option>
                                    <option value="3">⭐️⭐️⭐️</option>
                                    <option value="4">⭐️⭐️⭐️⭐️</option>
                                    <option value="5">⭐️⭐️⭐️⭐️⭐️</option>
                                </select>
                            </div>
                            <%--review--%>
                            <div class="form-group">
                                <label class="form-group mt-3 mb-1" for="review"> Review: </label>
                                <textarea class="form-control" id="review" type="text" name="reviewComments">${sessionScope.review.review}</textarea>
                            </div>
                            <%--cat--%>
                            <div class="form-group mt-3">
                                <label for="cat">Category of Tutorial</label>
                                <select class="form-select mt-1" name="cat" id="cat">
                                    <option selected> </option>
                                    <option value="html">HTML</option>
                                    <option value="css">CSS</option>
                                    <option value="javascript">JavaScript</option>
                                    <option value="bootstrap">BootStrap</option>
                                </select>
                            </div>
                            <%--btn--%>
                            <input type="submit" class="btn btn-block btn-block btn-primary mt-3 w-100">

                        </form>

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


    <%--FOOT--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />

    <%--SCRIPTS--%>
    <jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>
