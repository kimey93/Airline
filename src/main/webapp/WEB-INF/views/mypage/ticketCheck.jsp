<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/reset.css" rel="stylesheet">
<link href="../resources/css/mypage/ticketCheck.css" rel="stylesheet">
<link href="../resources/css/mypage/mypageHeader.css" rel="stylesheet">
<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,600,700' rel='stylesheet' type='text/css'>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>


<header></header>
<div id="headerBottom">
<div id="hbh">
<div id="hbhome"><i class="fa fa-home"></i></div>
<div id="hbselect">
<select onchange="location.href=this.value">
<option value="./main">나의 Every Air</option>
<option value="./memberUpdate">회원정보수정</option>
<option value="./mileage">마일리지</option>
<option selected="selected" value="./ticketCheck">예매내역</option>
<option value="./park">주차장 예약내역</option>
<option value="./limo">리무진 예약내역</option>
</select>
</div>
</div>
</div>


<button id="toggleButton">Toggle</button>

<ul class="timeline" id="timeline">
  <li class="li" id="checkInTimeline">
    <div class="timestamp">
      <span class="author">온라인 체크인</span>
      <span class="checkInDate" id="20200111">2020-01-11<span>
    </div>
    <div class="status">
      <h4> Online check in </h4>
    </div>
  </li>
  <li class="li" id="checkInCloseTimeline">
    <div class="timestamp">
      <span class="author">체크인 마감</span>
      <span class="checkInClose" id="20200118">2020-01-18<span>
    </div>
    <div class="status">
      <h4> Check in closure </h4>
    </div>
  </li>
  <li class="li" id="boardingCloseTimeline">
    <div class="timestamp">
      <span class="author">탑승마감</span>
      <span class="boardingClose">20200212<span>
    </div>
    <div class="status">
      <h4> Boarding closure </h4>
    </div>
  </li>
  <li class="li">
    <div class="timestamp">
      <span class="author">출발</span>
      <span class="date">TBD<span>
    </div>
    <div class="status">
      <h4> Depart </h4>
    </div>
  </li>
    <li class="li">
    <div class="timestamp">
      <span class="author">도착</span>
      <span class="date">TBD<span>
    </div>
    <div class="status">
      <h4> Arrival </h4>
    </div>
  </li>
 </ul>      
	<div>
	<div class="bookingList">예매내역</div>
		<div class="ticketInfo" style="display: none">
			<div class="ticketText">
				<div class="bookingNum">
					<span class="bookingNum">S68U58</span>
				</div>
				<div class="depInfo"> 
					<p class="ticketInfoText1">GMP</p>
					<p class="ticketInfoText2">김포(Gimpo)</p>
					<p class="ticketInfoText3">19JAN20(일) 06:10</p>
					<p class="ticketInfoText3">OZ123A456</p>
				</div>
				<div class="arrInfo"> 
					<p class="ticketInfoText1">CJU</p>
					<p class="ticketInfoText2">제주(Jeju)</p>
					<p class="ticketInfoText3">19JAN20(일) 07:20</p>
					<p class="ticketInfoText3">OZ123A456</p>
				</div>  
				<div class="moreInfo"> 
					<p class="ticketInfoText1">GMP → CJU</p>
					<p class="ticketInfoText2">좌석 : D4</p>
					<p class="ticketInfoText3">비행시간 : 48분</p>
					<p class="ticketInfoText1">CJU → GMP</p>
					<p class="ticketInfoText2">좌석 : F1</p>
					<p class="ticketInfoText3">비행시간 : 48분</p>
				</div> 
				<div class="button_wrap">
					<a class="cancel">예매 취소</a>
				</div>
			</div>
		</div>
	</div>
	<div class="bookingInfo">
		<div class="bookingTable">
			<table>
				<tr class="tableTop">
					<td>선택</td>
					<td>출발일자</td>
					<td>출발지→도착지</td>
					<td>출발→도착시간</td>
					<td>편명</td>
					<td>좌석</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>2020-02-07 (금)</td>
					<td>김포 → 제주</td>
					<td>07:30 → 08:30</td>
					<td>OZ123</td>
					<td>C4</td>
				</tr>
			</table>
	<div class="bookingInfo">
	<input type="text" id="cancel">
		<div class="bookingTable">
		
				<c:forEach items="${bookList}" var="book" varStatus="i">
					<p class="bookList bookDesign" id="${i.count}"><span id="bookingNum">${book.bookingNum}</span> <span>${book.resDate}</span><span>${book.depAirportNm}</span><span>${book.arrAirportNm}</span></p>
					<div class="timelineView${i.count} toggle${i.count}" style="display: none"></div>
					<div class="dataView${i.count} toggle${i.count} dataViewDesign" style="display: none"></div>
				</c:forEach>
				<table></table>
			</div>
			<div class="ajax" style="display: none">
				
			</div>
		</div>
	</div>
<script type="text/javascript">
var completes = document.querySelectorAll(".complete");
var toggleButton = document.getElementById("toggleButton");
	var cancelList = [];
	$(".bookList").click(function(){
		var num = $(this).attr('id');
			$.get("./bookingMore?bookingNum=" + $(this).find('#bookingNum').text(),function(data) {
				$(".ajax").html(data);
				var count = $(".ajax").find(".count").text();
				var rowItem = '<table class="open"><tr class="tableTop"><td class="td1">선택</td><td class="td2">출발일자</td><td class="td3">출발지 → 도착지</td><td class="td4">출발 → 도착시간</td><td class="td5">편명</td><td class="td6">좌석</td><td class="td7">운임</td><td class="td8">탑승번호</td><td class="td9">탑승자명</td></tr>';
				for(var i = 1; i <= count ; i++){
					var depPlandTime = $(".ajax").find(".depPlandTime"+i).text();
					var depPlandTime2 = depPlandTime.substring(0,4) + "-" + depPlandTime.substring(4,6) + "-" + depPlandTime.substring(6,8);
					var depPlandTime3 = depPlandTime.substring(8,10) + ":" + depPlandTime.substring(10,12);
					var depPlandTime4 = depPlandTime.substring(0,8);
					var arrPlandTime = $(".ajax").find(".arrPlandTime"+i).text();
					var arrPlandTime2 = arrPlandTime.substring(8,10) + ":" + arrPlandTime.substring(10,12);
					var arrPlandTime3 = arrPlandTime.substring(0,4) + "-" + arrPlandTime.substring(4,6) + "-" + arrPlandTime.substring(6,8);
					var arrPlandTime4 = arrPlandTime.substring(0,8);
					var seatName = $(".ajax").find(".seatName"+i).text();
					var flightBnum = $(".ajax").find(".flightBNum"+i).text();
					var totalPrice = $(".ajax").find(".totalPrice"+i).text();
					var bnum = $(".ajax").find(".bnum"+i).text();
					if(seatName == "")
						seatName = "X";
					if (flightBnum == "")
						flightBnum = "X";
					if(totalPrice == "0")
						totalPrice = "운임정보없음";
					rowItem += '<tr class="tableContents">';
					rowItem += '<td><input type="checkbox" class="cancelCheck" id="check"></td>';
					rowItem += '<td style="display:none">'+bnum+'</td>';
					rowItem += '<td>'+depPlandTime2+'</td>';
					rowItem += '<td>'+$(".ajax").find(".depAirportNm"+i).text()+" → "+$(".ajax").find(".arrAirportNm"+i).text()+'</td>';
					rowItem += '<td>'+depPlandTime3+" → "+arrPlandTime2+'</td>';
					rowItem += '<td>'+$(".ajax").find(".vihicleId"+i).text()+'</td>';
					rowItem += '<td>'+seatName+'</td>';
					rowItem += '<td>'+totalPrice+'</td>';
					rowItem += '<td>'+flightBnum+'</td>';
					rowItem += '<td>'+$(".ajax").find(".name"+i).text()+'</td>';
				}
				rowItem += '</table>';
				/**** 출발날짜의 하루 전 날짜 구하기 (체크인 마감) ****/
				var nowDate = new Date(depPlandTime.substring(0,4)+"/"+ depPlandTime.substring(4,6)+"/"+depPlandTime.substring(6,8));
				var yesterDate = nowDate.getTime() - (1 * 24 * 60 * 60 * 1000);
				nowDate.setTime(yesterDate);
				 
				var yesterYear = nowDate.getFullYear();
				var yesterMonth = nowDate.getMonth() + 1;
				var yesterDay = nowDate.getDate();
				        
				if(yesterMonth < 10){ yesterMonth = "0" + yesterMonth; }
				if(yesterDay < 10) { yesterDay = "0" + yesterDay; }
				        
				var depYesterDay = yesterYear + "-" + yesterMonth + "-" + yesterDay;
				/***************************************/
				var boardingClosure = new Date(depPlandTime.substring(0,4)+"/"+ depPlandTime.substring(4,6)+"/"+depPlandTime.substring(6,8)+" "+depPlandTime.substring(8,10) + ":" + depPlandTime.substring(10,12));
				boardingClosure.setMinutes(boardingClosure.getMinutes() - 30);
				alert(boardingClosure)
				
				
				var timeline = '<ul class="timeline" id="timeline"><li class="li" id="checkInTimeline"> <div class="timestamp"><span class="author">온라인 체크인</span><span class="checkInDate" id='+depPlandTime4+'>X<span></div><div class="status"><h4> Online check in </h4></div></li>';
				timeline += '<li class="li" id="checkInCloseTimeline"><div class="timestamp"><span class="author">체크인 마감</span><span class="checkInClose" id="'+depYesterDay+'"><span></div><div class="status"><h4> Check in closure </h4></div></li>';
				timeline += '<li class="li" id="boardingCloseTimeline"><div class="timestamp"><span class="author">탑승마감</span><span class="boardingClose">20200212<span></div><div class="status"><h4> Boarding closure </h4></div></li>';
				timeline += '<li class="li"><div class="timestamp"><span class="author">출발</span><span class="date">TBD<span></div><div class="status"><h4> Depart </h4></div></li>';
				timeline += '<li class="li"><div class="timestamp"><span class="author">도착</span><span class="date">TBD<span></div><div class="status"><h4> Arrival </h4></div></li></ul>';
				if( $(".ajax").find(".kind1").text() != '편도'){
					/*****타임라인 아이디 수정하기 (갈 때 올 때 생각해서)*****/
				timeline += '<ul class="timeline" id="timeline"><li class="li" id="checkInTimeline"> <div class="timestamp"><span class="author">온라인 체크인</span><span class="checkInDate" id='+depPlandTime4+'>X<span></div><div class="status"><h4> Online check in </h4></div></li>';
				timeline += '<li class="li" id="checkInCloseTimeline"><div class="timestamp"><span class="author">체크인 마감</span><span class="checkInClose" id="'+depYesterDay+'"><span></div><div class="status"><h4> Check in closure </h4></div></li>';
				timeline += '<li class="li" id="boardingCloseTimeline"><div class="timestamp"><span class="author">탑승마감</span><span class="boardingClose">20200212<span></div><div class="status"><h4> Boarding closure </h4></div></li>';
				timeline += '<li class="li"><div class="timestamp"><span class="author">출발</span><span class="date">TBD<span></div><div class="status"><h4> Depart </h4></div></li>';
				timeline += '<li class="li"><div class="timestamp"><span class="author">도착</span><span class="date">TBD<span></div><div class="status"><h4> Arrival </h4></div></li></ul>';
				}
				$(".dataView"+num).html(rowItem);
				$(".timelineView"+num).html(timeline);
				
				
				
				if($(".ajax").find(".isCheckIn").text() != 0)
					$("#"+depPlandTime4).text(depPlandTime2);
				$(".checkInClose").text(depYesterDay);
			});
			$(".toggle"+num).toggle(500);
	});
	$(document).on('click', 'input[id=check]', function(){
	   	alert($(this).closest('td').next().text());
	   	if($(this).is(":checked"))
		   	cancelList.push($(this).closest('td').next().text());
	   	else if ($(this).not(":checked")) 
	   		cancelList.splice(cancelList.indexOf($(this).closest('td').next().text()),1);
   		console.log(cancelList);
	<c:forEach items='cancelList' var='cancel'>
	$("#cancel").val(${cancel}); // 선택한 좌석을 파라미터로 넘기기 위해 input에 담아줌
	</c:forEach>
	   	
	});

	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	var day = date.getDate();
	if((month+"").length < 2){
		month = "0" + month;
	} 
	if((day+"").length < 2){
		day = "0" + day;
	} 
	var getDate = String(year) + String(month) + String(day);
	if(Number(getDate) > $(".checkInDate").attr('id'))
		$("#checkInTimeline").addClass("complete");
	if(Number(getDate) > $(".checkInClose").attr('id'))
		$("#checkInCloseTimeline").addClass("complete");
	if(Number(getDate) > $(".boardingClose").text())
		$("#boardingCloseTimeline").addClass("complete");
	/* alert(String(new Date().getHours()) + String(new Date().getMinutes())); */
	
function toggleComplete(){
  var lastComplete = completes[completes.length - 1];
  lastComplete.classList.toggle('complete');
}

toggleButton.onclick = toggleComplete;
</script>

</body>
</html>