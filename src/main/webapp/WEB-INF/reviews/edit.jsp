<%--
  Created by IntelliJ IDEA.
  User: yasminerico
  Date: 5/11/22
  Time: 12:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      <label for="description"> Description: </label>
      <textarea id="description" type="text" name="description">${review.review}</textarea>
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
