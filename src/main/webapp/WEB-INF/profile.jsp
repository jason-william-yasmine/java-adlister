<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body class="d-flex flex-column min-vh-100">

<%--NAV--%>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<%--MAIN--%>
<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
</div>

<%--Shows ads on profile --%>

<c:forEach var="ad" items="${ads}">
    <c:if test="${sessionScope.user.id eq ad.userId}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>

            <form action="${pageContext.request.contextPath}/ads/edit/${ad.id}" method="get">
                <button>Edit Ad</button>
            </form>

                <%--Delete An Ad --%>
            <form action="/ads/delete" method="POST">
                <button>Delete Ad</button>
                <input type="hidden" name="singleAd" value="${ad.id}">
            </form>

                <%--Shows the Single ad with extra info --%>
            <form action="/ads/single" method="get">
                <button>Click for more details!</button>
                <input type="hidden" name="singleAd" value="${ad.id}">
            </form>


        </div>
    </c:if>
</c:forEach>


<%--FOOT--%>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>

<%--SCRIPTS--%>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>


</body>
</html>
