<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글</title>
</head>
<body>
<table>
<tr>
				<td >글내용</td>
			</tr>
<c:forEach var="i" items="${list}" begin="0" end="${list.size()}" step="1" varStatus="status">
			<tr>
				<td >${i.a_contents}</td>
				
			</tr>
			</c:forEach>
</table>
</body>
</html>