<%--
  Created by IntelliJ IDEA.
  User: yasminerico
  Date: 5/9/22
  Time: 12:41 AM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
  <title>${ad.title}</title>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Single Ads" />
  </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
  <div class="col-md-6 justify-content-center">
    <h1> Title: ${singleAd.title} </h1>
    <h3> Description: ${singleAd.description}</h3>
    <h3>Categories: </h3>
  </div>
</div>
</body>
</html>