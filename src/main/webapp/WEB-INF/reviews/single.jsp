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
  <style>
    .tutInfo{
      display: flex;
      flex-direction: row;
    }

    #reviewInfo{
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-content: space-between;
      align-items: center;
    }

    h2{
      font-size: 60px;
    }

    p{
      font-size: 30px;
    }

    #editDelete{
      display: flex;
      flex-direction: row;
        padding-bottom: 40px;
      align-items: flex-end;
    }
  </style>
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
            <i class="fa-solid fa-folder"></i> Review
          </h>
        </div>
      </div>
    </div>
  </header>

  <section class="tutInfo">

          <%--thumb--%>
                  <img src="${sessionScope.review.thumb}"
                       alt="${sessionScope.review.review}">
<div id="reviewInfo">
            <h2>${sessionScope.review.title}</h2>
            <%--review--%>
            <p>${sessionScope.review.review}</p>


            <%--Cat--%>
           <div> Rating: ${sessionScope.review.rating} || Category: ${sessionScope.review.cat} || URL: <a href="${review.tutorialURL}"
                                                                                                    class="btn btn-primary">
                <i class="fa-solid fa-link"></i>
           </a></div>
</div>
              <section id="editDelete">
                  <%--Shows Reviews on profile --%>

                  <c:if test="${sessionScope.user.id eq review.uid}">
                      <%--Edit Review--%>
                      <form action="${pageContext.request.contextPath}/reviews/edit/${review.id}" method="get">
                          <button class="btn btn-warning">Edit Review</button>
                      </form>
                      <%--Delete Review--%>
                      <%--Delete Review--%>
                      <form action="/reviews/delete" method="POST">
                          <button class="btn btn-danger">Delete Review</button>
                          <input type="hidden" name="singleReview" value="${review.id}">
                      </form>
                  </c:if>

              </section>
  </section>




  <%--FOOT--%>
  <jsp:include page="/WEB-INF/partials/footer.jsp" />

  <%--SCRIPTS--%>
  <jsp:include page="/WEB-INF/partials/scripts.jsp" />


</body>
</html>