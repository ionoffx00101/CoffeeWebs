<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<%--defaultTemplate를 적용할 때 템플릿의 title, body 영역은 여기에서 오버라이드한다 --%>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="title">로그인하기</tiles:putAttribute>
    <tiles:putAttribute name="body">
     
     <h4> 글쓰기 </h4><br>
<div>
<form name="newpost">
<table>
<tr>
<td>글제목 :</td>
<td><input type="text" name="a_title" ></td>
</tr>
<tr>
<td>작성자 :</td>
<td><input type="text" name="a_author" readonly="readonly" value="${LoginId}"></td>
</tr>
<tr>
<td>내용 :</td>
<td><textarea name="a_contents" ></textarea></td>
</tr>
<tr>
<td></td>
<td><button type="button" name="newpostsubmit">등록하기</button></td>
</tr>
<tr>

<td colspan="2"><a href="boardList?pnum=1">리스트보기</a></td>
</tr>
</table>
</form>
</div>
<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파일 업로드 폼</title>
</head>
<body>
  <form:form method="post" enctype="multipart/form-data" 
   modelAttribute="uploadedFile" action="fileUpload">  
   업로드할 파일 선택: <br>
  <input type="file" name="file"><br>
  <form:errors path="file"/>
  <input type="text" name="desc"><br>
  <input type="submit" value="전 송">  
  </form:form>   --%>

    </tiles:putAttribute>
</tiles:insertDefinition>