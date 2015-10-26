<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%--defaultTemplate를 적용할 때 템플릿의 title, body 영역은 여기에서 오버라이드한다 --%>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="title">글보기</tiles:putAttribute>
    <tiles:putAttribute name="body">
       <h4> 글수정 </h4><br>
<table>
<tr>
				<td >글내용</td>
			</tr>
<c:forEach var="i" items="${list}" begin="0" end="${list.size()}" step="1" varStatus="status">
			<tr>
				<td >${i.a_contents}</td>
				
			</tr>
			</c:forEach>
		<tr>
		<td ><a href="boardRepost"><button type="button">답글쓰기</button></a></td>
<td ><a href="boardModi"><button type="button">수정하기</button></a></td>
<td ><a href="boardDel"><button type="button">삭제하기</button></a></td>
</tr>	
			<tr>

<td colspan="2"><a href="boardList?pnum=1">리스트보기</a></td>
</tr>
</table>
 
    </tiles:putAttribute>
</tiles:insertDefinition>