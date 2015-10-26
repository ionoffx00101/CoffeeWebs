<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%--defaultTemplate를 적용할 때 템플릿의 title, body 영역은 여기에서 오버라이드한다 --%>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="title">글 리스트</tiles:putAttribute>
    <tiles:putAttribute name="body">
       <h4> 리스트 </h4><br>
<table>
<tr>
<td ></td>
				<td ></td>
<td ><a href="boardPost"><button type="button">글쓰기</button></a></td>
</tr>
<tr>
				<td >글번호</td>
				<td >제목</td>
				<td >조회수</td>
			</tr>
<c:forEach var="i" items="${list}" begin="0" end="${list.size()}" step="1" varStatus="status">
			<tr>
				<td >${i.a_num}</td>
				<td ><a href="boardRead?num=${i.a_num}">${i.a_title}</a></td>
				<td >${i.a_hitcnt}</td>
			</tr>
			</c:forEach>
</table>
	<p>
			<c:choose>
				<c:when test="${navi.leftMore}">
					<a href="list?pnum=1"> [<<] </a>
				</c:when>
			</c:choose>



		<!--  -->
		

		<c:forEach var="board" items="${navi.links}">

			<c:choose>
				<c:when test="${navi.currPage==board}">
          [<span style='color: red; font-size: 1.5em;'>${board}</span>]
       </c:when>
				<c:when test="${navi.currPage!=board}">
        [ <a href="list?pnum=${board}">${board}</a>]
       </c:when>
			</c:choose>

		</c:forEach>
	
		
		

			<c:choose>
				<c:when test="${navi.rightMore}">
					<a href="list?pnum=${navi.linknum}"> [>>] </a>
					<%-- ${navi.links.length-1}${navi.links().length-1}--%>
				</c:when>
			</c:choose>

    </tiles:putAttribute>
</tiles:insertDefinition>