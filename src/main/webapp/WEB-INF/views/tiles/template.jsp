<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<%-- <tiles:importAttribute name="javascripts"/> --%>
<html>
    <head>
    <meta charset="UTF-8">
 <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(jqueryOk);
function jqueryOk() {
	$("button[name=loginsubmit]").on("click",function (evt){
        evt.preventDefault();
		  $.ajax({
			type : "post",
			url : "boardLogin",
			dataType : "json",
			data :  $('form[name=loginform]').serialize()
			,
			success : function(json) {
				if (json.check) {
					alert("로그인완료");
				} else{
					alert("로그인실패");
				}
			},
			error : function(err) {
				alert("에러 : 다시 시도해주세요");
			}

		}); 
	});
	
	$("button[name=newpostsubmit]").on("click",function (evt){
        evt.preventDefault();
		  $.ajax({
			type : "post",
			url : "boardPost",
			dataType : "json",
			data :  $('form[name=newpost]').serialize()
			,
			success : function(json) {
				if (json.check) {
					alert("등록완료");
				} else{
					alert("등록실패");
				}
			},
			error : function(err) {
				alert("에러 : 다시 시도해주세요");
			}

		}); 
	});
}
</script>
    <style type="text/css">
    
a{text-decoration:none; color:#000000;}		 
		 a:hover{color:#ff0000;} 					
		 
		 /* nav tag */
		 nav ul{padding-top:10px;} 		        
		 nav ul li {
			display:inline; 			       
			border-left:1px solid #999; 		
			font:bold 12px Dotum; 			
			padding:0 5px; 				
		}
		 nav ul li:first-child{border-left:none;} 	
    </style>
    <title><tiles:insertAttribute name="title" ignore="true" /></title> <!--타이틀이 null인 경우에는 무시한다-->
</head>
<body>
    <div class="page">
        <tiles:insertAttribute name="header" />
        <div class="content">
            <tiles:insertAttribute name="menu" />
            <tiles:insertAttribute name="body" />
        </div>
        <tiles:insertAttribute name="footer" />
    </div>
    
</body>
</html>