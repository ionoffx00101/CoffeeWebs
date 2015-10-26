<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<nav><div class="menu">

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
</nav>