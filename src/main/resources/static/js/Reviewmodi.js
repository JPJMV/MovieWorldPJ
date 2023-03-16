/**
 * 
 */
 
 function RmodiCheck() {
	
	if(document.Rmodi.rtitle.value.length < 2) {
		alert("제목는 2글자 이상이어야 합니다.");
		return;
	}	
	
	
	if(document.Rmodi.rcontent.value.length < 10) {
		alert("내용은 10글자 이상이어야 합니다.");
		return;
	}
	

	if(document.Rmodi.rgrade.value == 0) {
		alert("평점을 선택해주세요.");
		return;
	}
	
	

	
	document.Rmodi.submit();
	
} 