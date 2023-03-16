/**
 * 
 */
 
 function ReviewCheck() {
	
	if(document.Review_frm.rtitle.value.length < 2) {
		alert("제목는 2글자 이상이어야 합니다.");
		return;
	}	
	
	
	if(document.Review_frm.rcontent.value.length < 10) {
		alert("내용은 10글자 이상이어야 합니다.");
		return;
	}
	

	if(document.Review_frm.rgrade.value == 0) {
		alert("평점을 선택해주세요.");
		return;
	}
	
	if(document.Review_frm.rmovie.value === "영화 선택") {
		alert("영화를 선택해주세요.");
		return;
	}
	

	
	document.Review_frm.submit();
	
} 