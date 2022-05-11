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
    <jsp:param name="title" value="More Info" />
  </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <div class="col-md-6 justify-content-center">
    <h1> Title: ${singleReview.title} </h1>
    <h3> Description: ${singleReview.review}</h3>
    <h3>Categories: ${singleReview.cat}</h3>
    <h3>Url: ${singleReview.tutorialURL}</h3> <%--Make sure the name matches what is in review model (capitalization matters)--%>
  </div>

</div>

<%--FOOT--%>
<jsp:include page="/WEB-INF/partials/footer.jsp" />

<%--SCRIPTS--%>
<jsp:include page="/WEB-INF/partials/scripts.jsp" />
</body>
</html>