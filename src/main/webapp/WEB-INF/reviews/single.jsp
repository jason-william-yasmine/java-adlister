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
            <i class="fa-solid fa-file-exclamation"></i>
            Review
          </h>
        </div>
      </div>
    </div>
  </header>

  <%--MAIN--%>



  <%--FOOT--%>
  <jsp:include page="/WEB-INF/partials/footer.jsp" />

  <%--SCRIPTS--%>
  <jsp:include page="/WEB-INF/partials/scripts.jsp" />


</body>
</html>