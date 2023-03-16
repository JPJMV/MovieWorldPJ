<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/menu.css">
<title>menu</title>

</head>
<body>
<center>
<div id="wrap">
        <div id="header">
            <ul id="gnb" class=""> 
                <li>
                    <a href="#" class="menu01">영화</a>
                    <div class="snb">
                        <ul>
                            <li><a href="cmovielist" class="menu02">현재 상영작</a></li>
                            <li><a href="fmovielist" class="menu02">개봉예정작</a></li>
                            <li><a href="reviewList" class="menu02">영화리뷰</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#" class="menu01">예매</a>
                    <div class="snb">
                        <ul>
                            <li><a href="Dayschedule" class="menu02">빠른예매</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#" class="menu01">스토어</a>
                    <div class="snb">
                        <ul>
                            <li><a href="Popcorn" class="menu02">팝콘</a></li>
                            <li><a href="Snacks" class="menu02">스낵</a></li>
                            <li><a href="combo" class="menu02">콤보</a></li>
                            <li><a href="Beverage" class="menu02">음료</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#" class="menu01">혜택</a>
                    <div class="snb">
                        <ul>
                            <li><a href="membership" class="menu02">멤버십</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</center>
<script type="text/javascript">
        let gnb = document.querySelectorAll("#gnb > li")
        let gnbElement = document.querySelector("#gnb")

        for (let i = 0; i < gnb.length; i++) {
            gnb[i].addEventListener("mouseover",() => {
                gnbElement.classList.add("on")
            })
        }

        let headerElement = document.querySelector("#header")

        header.addEventListener("mouseout",(e) =>{
            if (e.target.id == "gnb" ){
                gnbElement.classList.remove("on")
            }
        })
</script>
</body>
</html>