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

    <%--HEADER--%>
    <header id="main-header" class="py-2 bg-primary text-white">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h>
                        <i class="fa-solid fa-folder-plus"></i>
                        Add Review
                    </h>
                </div>
            </div>
        </div>
    </header>

    <%--MAIN--%>
    <div class="container w-50">
            <form action="/reviews/create" method="post" class="mt-4">
                <%--Review Name--%>
                    <div class="form-group">
                        <label for="rev-name" class="mb-1">Review Name</label>
                        <input id="rev-name" name="rev-name" class="form-control" type="text">
                    </div>
                <%--Tut Owner--%>
                    <div class="form-group mt-3">
                        <label for="tut-thumb-logo" class="mb-1">Rating</label>
                        <select id="tut-thumb-logo" class="form-select mt-3" name="tut-thumb-logo">
                            <option selected>  </option>
                            <option
                                    value="/img/tut-thumbs/BitDegree.png">
                                BitDegree
                            </option>
                            <option
                                    value="/img/tut-thumbs/CodeAvengers.png">
                                CodeAvengers
                            </option>
                            <option
                                    value="/img/tut-thumbs/Codecademy.png">
                                Code Academy
                            </option>
                            <option
                                    value="/img/tut-thumbs/CodeConquest.png">
                                CodeConquest
                            </option>
                            <option
                                    value="/img/tut-thumbs/Coursera.png">
                                Coursera
                            </option>
                            <option
                                    value="/img/tut-thumbs/EvatoTuts.png">
                                EvatoTuts
                            </option>
                            <option
                                    value="/img/tut-thumbs/FutureLearn.png">
                                Future Learn
                            </option>
                            <option
                                    value="/img/tut-thumbs/GeeksForGeeks.png">
                                Geeks for Geeks
                            </option>
                            <option
                                    value="/img/tut-thumbs/Khan.png">
                                Khan
                            </option>
                            <option
                                    value="/img/tut-thumbs/LinkedIn.png">
                                LinkedIn Learning
                            </option>
                            <option
                                    value="/img/tut-thumbs/MIT.png">
                                MIT
                            </option>
                            <option
                                    value="/img/tut-thumbs/Skillcrush.png">
                                Skill Crush
                            </option>
                            <option
                                    value="/img/tut-thumbs/SoloLearn.png">
                                SoloLearn
                            </option>
                            <option
                                    value="/img/tut-thumbs/TheOdenProject.png">
                                The Oden Project
                            </option>
                            <option
                                    value="/img/tut-thumbs/Udemy.png">
                                Udemy
                            </option>
                            <option
                                    value="/img/tut-thumbs/YouTube.png">
                                YouTube
                            </option>
                        </select>
                    </div>
                <%--Tut URL--%>
                    <div class="form-group mt-3">
                        <label for="tut-url" class="mb-1">Enter URL for Tutorial</label>
                        <input type="text" id="tut-url" class="form-control" name="tut-url">
                    </div>
                <%--Tut Cost--%>
                    <div class="form-group mt-3">
                        <label for="tut-cost" class="mb-1">Cost</label>
                        <input type="number" step="0.01" id="tut-cost" class="form-control" name="tut-cost">
                    </div>
                <%--Tut Rating--%>
                    <div class="form-group mt-3">
                        <label for="tut-rating" class="mb-1">Rating</label>
                        <select id="tut-rating" class="form-select mt-3" name="tut-rating">
                            <option selected value="-1">  </option>
                            <option value="0">🙅</option>
                            <option value="1">⭐️</option>
                            <option value="2">⭐️⭐️</option>
                            <option value="3">⭐️⭐️⭐️</option>
                            <option value="4">⭐️⭐️⭐️⭐️</option>
                            <option value="5">⭐️⭐️⭐️⭐️⭐️</option>
                        </select>
                    </div>
                <%--Tut Description--%>
                    <div class="form-group mt-3">
                        <label for="tut-description" class="mb-1">Description of Tutorial</label>
                        <textarea id="tut-description" class="form-control" name="tut-description"></textarea>
                    </div>
                <%--Review Comments--%>
                    <div class="form-group mt-3">
                        <label for="rev-comments" class="mb-1">User's Review</label>
                        <textarea id="rev-comments" class="form-control" name="rev-comments"></textarea>
                    </div>
                <%--Tut Cats--%>
                    <div class="form-group mt-3">
                        <label for="tut-rating" class="mb-1">Category of Tutorial</label>
                        <select class="form-select" name="tut-cat">
                            <option selected> </option>
                            <option value="html">HTML</option>
                            <option value="css">CSS</option>
                            <option value="javascript">JavaScript</option>
                            <option value="bootstrap">BootStrap</option>
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
