<%--
  Created by IntelliJ IDEA.
  User: yasminerico
  Date: 5/9/22
  Time: 12:41 AM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
  <title>${reviews.title}</title>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Single Reviews" />
  </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <div class="col-md-6 justify-content-center">
    <h1> Title: ${singleReview.title} </h1>
    <h3> Description: ${singleReview.review}</h3>
    <h3>Categories: </h3>
  </div>
</div>
</body>
</html>