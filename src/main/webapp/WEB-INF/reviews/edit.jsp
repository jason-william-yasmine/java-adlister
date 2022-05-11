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
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <form action="/reviews/edit" method="post">
        <input type="hidden" name="reviewToUpdate" value="${reviewObject}">
        <div class="col-md-6 justify-content-center form-group">
            <h1>Edit your review</h1>

            <label for="title"> Title:</label>
            <input id="title" type="text" name="title" value="${review.title}">
        </div>
        <div class="form-group">
            <label for="review"> Review: </label>
            <textarea id="review" type="text" name="description">${review.review}</textarea>

            <div class="form-group mt-3">
                <label for="thumb" class="mb-1">Where Tutorial Comes From</label>
                <select id="thumb" class="form-select mt-3" name="thumb">
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
            <button>Save Changes</button>
        </div>

    </form>

</div>
<%--FOOT--%>
<jsp:include page="/WEB-INF/partials/footer.jsp" />

<%--SCRIPTS--%>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>
