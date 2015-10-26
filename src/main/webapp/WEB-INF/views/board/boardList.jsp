<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
</head>
<body>
<table>
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
</body>
</html>