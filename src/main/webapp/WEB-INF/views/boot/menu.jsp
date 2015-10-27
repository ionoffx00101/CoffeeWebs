<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%-- <nav><div class="menu">

    <ul>
        <li>
            <spring:url value="home" var="homeUrl" htmlEscape="true"/>
            <a href="${homeUrl}">Home</a>
        </li>
        <li>
            <spring:url value="boardLogin" var="loginUrl" htmlEscape="true"/>
            <a href="${loginUrl}">login</a>
        </li>
        <li>
            <spring:url value="boardList?pnum=1" var="listUrl" htmlEscape="true"/>
            <a href="${listUrl}">list</a>
        </li>
    </ul>
</div>
</nav> --%>

 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">로고</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">게임하기</a>
                    </li>
                    <li>
                        <a href="#">게임소개</a>
                    </li>
                    <li>
                        <a href="#">공지사항</a>
                    </li>
                    <li>
                        <a href="#">자유게시판</a>
                    </li>
                    <li>
                        <a href="#">이미지게시판</a>
                    </li>
                    <li>
                        <a href="#">랭킹게시판</a>
                    </li>
                    <li>
                        <a href="#">Q&A</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>