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

  <section>

          <%--thumb--%>
                  <img src="${sessionScope.review.thumb}"
                       alt="${sessionScope.review.review}">

            <h2>${sessionScope.review.title}</h2>
            <%--review--%>
            <p>${sessionScope.review.review}</p>
            <h3>Rating: ${sessionScope.review.rating}</h3>
            <%--Cat--%>
            <small>${sessionScope.review.cat}</small>

  </section>
<section>
  <%--Shows Reviews on profile --%>
  <c:forEach var="review" items="${reviews}">
    <c:if test="${sessionScope.user.id eq user.id}">
      <div class="col-md-6">
        <img src="${review.thumb}">
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
</section>


  <%--FOOT--%>
  <jsp:include page="/WEB-INF/partials/footer.jsp" />

  <%--SCRIPTS--%>
  <jsp:include page="/WEB-INF/partials/scripts.jsp" />


</body>
</html>