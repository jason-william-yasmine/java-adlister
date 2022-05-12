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
            <i class="fa-solid fa-folder"></i> Review
          </h>
        </div>
      </div>
    </div>
  </header>

  <%--MAIN--%>
  <%--ACTIONS--%>
  <section id="actions" class="py-4 bg-light">
      <div class="container">
          <div class="row">
              <div class="col-md-3">
                  <a href="/index-home" class="btn btn-light btn-block w-100">
                      <i class="fas fa-arrow-left"></i>&nbsp;&nbsp; Back To Reviews
                  </a>
              </div>
              <div class="col-md-3">
                  <c:if test="${sessionScope.user.id eq review.uid}">
                      <a href="/profile" class="btn btn-success btn-block w-100">
                          <i class="fa-solid fa-arrow-right"></i>&nbsp;&nbsp; Back to Profile
                      </a>
                  </c:if>

              </div>
              <div class="col-md-3">
                  <a href="#" class="btn btn-warning btn-block w-100 invisible">
                      <i class="fa-solid fa-user-pen"></i>&nbsp;&nbsp; Edit Account
                  </a>
              </div>
          </div>
      </div>
  </section>
  <%--REVIEW--%>
  <section class="tutInfo mt-4">
      <div class="container w-75">
          <div class="card">
              <div class="text-center">
                  <img src="${sessionScope.review.thumb}" alt="Add alt data in table later" class="card-img-top" style="width: 40%;">
              </div>
          </div>
          <div class="card-header">
              <h2>${sessionScope.review.title}</h2>
          </div>
          <div class="card-body">
              <div class="card-title">
                  Rating ${sessionScope.review.rating}
              </div>
              <div class="card-main-text">
                  <hr>
                  <p>${sessionScope.review.review}</p>
              </div>
              <div class="card-side-text">
                  <hr>s
                  Category: ${sessionScope.review.cat}
              </div>
          </div>
          <div class="card-footer d-flex justify-content-between">
              <div>
              <%--link--%>
                  <div>
                      <a href="${review.tutorialURL}" class="btn btn-primary"> <i class="fa-solid fa-link"></i> </a>
                  </div>
              </div>
              <%--USER DEPENDENT--%>
              <div>
                  <div class="d-flex justify-content-end">
                      <c:if test="${sessionScope.user.id eq review.uid}">
                          <%--edit--%>
                          <%--org--%>
                          <form action="${pageContext.request.contextPath}/reviews/edit/${review.id}" method="get">
                              <button class="btn btn-warning">Edit Review</button>
                          </form>
                          <%--del--%>
                          <%--org--%>
                          <form action="/reviews/delete" method="POST">
                              <button class="btn btn-danger">Delete Review</button>
                              <input type="hidden" name="singleReview" value="${review.id}">
                          </form>
                      </c:if>
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