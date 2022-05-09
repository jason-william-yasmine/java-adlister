<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 5/8/22
  Time: 2:25 PM

  NAVBAR

--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--NAV-->
<nav class="navbar navbar-expand-sm navbar-dark bg-dark p-1">
    <div class="container">
        <a href="/index" class="navbar-brand">TechTutLister</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse"><span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarCollapse">

            <form id="nav-search-form" class="form-inline my-2 mx-3 my-lg-0">
                <input type="search" class="form-control" placeholder="Search Reviews">
            </form>

            <ul class="navbar-nav">
                <c:if test="${sessionScope.user == null}">

                    <li class="nav-item">
                        <a href="/login" class="nav-link">
                            <i class="fas fa-user-times"></i>
                            Login
                        </a>
                    </li>

                </c:if>

                <c:if test="${sessionScope.user != null}">

                    <li class="nav-item dropdown mr-3">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user"></i> Welcome >Name<
                        </a>
                        <div class="dropdown-menu">
                            <a href="/profile" class="dropdown-item">
                                <i class="fas fa-user-circle"></i>
                                Profile
                            </a>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-cog"></i>
                                Settings
                            </a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a href="/logout" class="nav-link">
                            <i class="fas fa-user-times"></i>
                            Logout
                        </a>
                    </li>

                </c:if>

                <c:if test="${sessionScope.user != null}">



                </c:if>

            </ul>
        </div>
    </div>
</nav>
