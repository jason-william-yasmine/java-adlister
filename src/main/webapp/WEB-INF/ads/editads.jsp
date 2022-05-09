<%--
  Created by IntelliJ IDEA.
  User: yasminerico
  Date: 5/9/22
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Ad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <form action="/ads/edit" method="post">
        <input type="hidden" name="adToUpdate" value="${adObject}">
        <div class="col-md-6 justify-content-center form-group">
            <h1>Edit The Ad</h1>

            <label for="title"> Title:</label>
            <input id="title" type="text" name="title" value="${existingTitle}">
        </div>
        <div class="form-group">
            <label for="description"> Description: </label>
            <textarea id="description" type="text" name="description">${existingDescription}</textarea>
            <button>Save Changes</button>
        </div>

    </form>

</div>

</body>
</html>
