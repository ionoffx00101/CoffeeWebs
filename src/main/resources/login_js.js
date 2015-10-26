$(jqueryOk);
function jqueryOk() {
	
	$("button[name=loginsubmit]").on("click",function (evt){
        evt.preventDefault();
        alert("버튼 눌림");
		  /*$.ajax({
			type : "post",
			url : "../register/allform",
			dataType : "json",
			data :  $('form').eq(0).serialize()
			,
			success : function(json) {
				if (json.check) {
					alert("회원가입완료");
					$('#link').css("display","none");
				} else{
					alert("회원가입실패");
				}
			},
			error : function(err) {
				alert("에러 : 다시 시도해주세요");
			}

		}); */
	});
	/* if($email.ok){
		
	} */
}