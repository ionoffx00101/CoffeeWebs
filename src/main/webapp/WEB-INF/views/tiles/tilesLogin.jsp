<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<%--defaultTemplate를 적용할 때 템플릿의 title, body 영역은 여기에서 오버라이드한다 --%>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="title">로그인하기</tiles:putAttribute>
    <tiles:putAttribute name="body">
       <h4> 로그인 </h4><br>
     <form name="loginform">
<table>
<tr>
				<td >아이디</td>
				<td ><input type="text" name="id" required="required"></td>
				<!-- required="required" 가 안된다 -->
				
			</tr>
<tr>
				<td >비밀번호</td>
				<td ><input type="password" name="password"></td>
				<td rowspan="2"><button type="button" name="loginsubmit"> 로그인 </button></td>
			</tr>
</table>
</form>
<h4>지금은 뭘 쳐도 로그인이 됩니다.</h4>

 
    </tiles:putAttribute>
</tiles:insertDefinition>