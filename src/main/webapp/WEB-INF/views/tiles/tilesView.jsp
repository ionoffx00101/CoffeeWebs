<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%--defaultTemplate를 적용할 때 템플릿의 title, body 영역은 여기에서 오버라이드한다 --%>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="title">황인영 게시판 홈</tiles:putAttribute>
    <tiles:putAttribute name="body">
     
    <%--tiles태그 안에 스크립트 요소를 사용하면 오류가 발생하므로 아래처럼 JSTL을 사용한다 --%>
       
        <div class="body">
            <h1>안녕하신가!</h1> 
  
            <p>게시판을 만들고 있다</p>
            <p>로그인을 해야 리스트로 이동할 수 있다.</P>
            <p>로그인 후 위에 리스트를 누르면 리스트로 이동한다.</P>
        </div>
 
    </tiles:putAttribute>
</tiles:insertDefinition>