<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://www.kobus.co.kr/css/spexp/plugin.css?v=1.0">
<link rel="stylesheet" type="text/css" href="https://www.kobus.co.kr/css/spexp/reset.css?v=1.0">
<link rel="stylesheet" type="text/css" href="https://www.kobus.co.kr/css/spexp/layout.css?v=1.1">
<link rel="stylesheet" type="text/css" href="https://www.kobus.co.kr/css/spexp/ui-style.css?v=1.0">
<link rel="stylesheet" type="text/css" href="https://www.kobus.co.kr/css/spexp/content.css?v=1.5">
</head>
<c:import url="../template/boot.jsp"></c:import>
		<body class="full">
	
	<div class="wrap main full"><!-- main page class="main" 추가 -->
		<div class="util_top">
			<h1><a href="/mainExp.do">리무진버스예매</a></h1>
			<div class="util clear">
				<ul>
					<!-- <li><a href="/spexp/mrs/mrsrecplist.do">영수증조회</a></li> -->
					<li><a href="https://www.kobus.co.kr/mrs/mrsrecplist.do">영수증조회</a></li>
					
					
						<!-- <li><a href="#" onclick="javascript:$('[data-remodal-id=popLogin]').remodal().open();">로그인</a></li> -->
						<li><a href="https://www.kobus.co.kr/mbrs/lgn/loginMain.do"><span>로그인</span></a></li>
						<li><a href="https://www.kobus.co.kr/mbrs/mbrsjoin/mbrsJoin.do">회원가입</a></li>
					
					
					<!-- <li><a href="/spexp/mbrs/mbrsjoin/mbrsJoin.do">회원가입</a></li> -->
				</ul>
				<div class="select-box">
					<div class="selectricWrapper"><div class="selectricHideSelect"><select name="lng_cd_navi" id="lng_cd_navi" title="다국어사이트 선택" tabindex="0">
						<option value="KO" selected="selected">한국어</option>
						<option value="EN">English</option>
						<option value="CN">中文</option>
						<option value="JP">日本語</option>
					</select></div><div class="selectric"><p class="label">한국어</p><b class="button">▾</b></div><div class="selectricItems" tabindex="-1"><div class="selectricScroll"><ul><li class="selected">한국어</li><li class="">English</li><li class="">中文</li><li class="last">日本語</li></ul></div></div><input class="selectricInput" tabindex="0"></div>
				</div>
			</div>			
		</div>
		

<script type="text/javascript" src="/js/spexp/main/SpExpMain.js?v=1.3"></script>

<script type="text/javascript" src="/js/spexp/mrs/rotinf/SpExpRotInfPup.js?v=1.0"></script>
<script type="text/javascript" src="/js/spexp/mrs/rotinf/SpExpRotInf.js?v=1.3"></script>
<script type="text/javascript" src="/js/spexp/lgn/SpExpLgn.js?v=1.1"></script>




<form name="rotInfFrm" id="rotInfFrm" method="post" action="/mrs/alcnSrch.do">
	<input type="hidden" name="deprCd" id="deprCd" value=""><!-- 출발지코드 -->
	<input type="hidden" name="deprNm" id="deprNm" value=""><!-- 출발지명 -->
	<input type="hidden" name="arvlCd" id="arvlCd" value=""><!-- 도착지코드 -->
	<input type="hidden" name="arvlNm" id="arvlNm" value=""><!-- 도착지명 -->
	<input type="hidden" name="tfrCd" id="tfrCd" value=""><!-- 환승지코드 -->
	<input type="hidden" name="tfrNm" id="tfrNm" value=""><!-- 환승지명 -->
	<input type="hidden" name="tfrArvlFullNm" id="tfrArvlFullNm" value=""><!-- 환승지포함 도착지 명 -->
	<input type="hidden" name="pathDvs" id="pathDvs" value="sngl"><!-- 직통sngl,환승trtr,왕복rtrp -->
	<input type="hidden" name="pathStep" id="pathStep" value="1"><!-- 왕복,환승 가는편순번 -->
	<input type="hidden" name="pathStepRtn" id="pathStepRtn" value=""><!-- 왕복,환승 가는편순번 -->
	<input type="hidden" name="crchDeprArvlYn" id="crchDeprArvlYn" value="N"><!-- 출도착지 스왑여부 -->
	<input type="hidden" name="deprDtm" id="deprDtm" value="20200123"><!-- 가는날(편도,왕복) -->
	<input type="hidden" name="deprDtmAll" id="deprDtmAll" value="2020. 1. 23. 목"><!-- 가는날(편도,왕복) -->
	<input type="hidden" name="arvlDtm" id="arvlDtm" value="20200123"><!-- 오는날(왕복) -->
	<input type="hidden" name="arvlDtmAll" id="arvlDtmAll" value="2020. 1. 23. 목"><!-- 오는날(왕복) -->
	<input type="hidden" name="busClsCd" id="busClsCd" value="0"><!-- 버스등급 -->
	<input type="hidden" name="abnrData" id="abnrData" value=""><!-- 결과값여부 -->
	<input type="hidden" name="prmmDcYn" id="prmmDcYn" value="N"><!-- 시외우등할인대상노선 -->
	<input type="hidden" name="takeTime" id="takeTime" value="0"><!-- 시외우등할인대상노선 -->
	<input type="hidden" name="spexp" id="spexp" value="Y"><!-- 특송플레그 -->
</form>
<div class="loading" id="loading" style="height: 80%; top: 100px;"><p class="load" style="margin-left: -53px;"></p></div>
 <!-- // 20190910 추가 -->  
	<div class="pop_dimmed"></div>
		<div class="noti_pop_wrap">
		
			
		</div>
        <!-- // 20190910 추가 -->         
<div class="main_top">
	<div class="main_content">
		<div class="main_txtBox">
			<p class="title">리무진버스 통합 예매</p>
			<span class="desc">EVERYAIR를 이용하는 고객님께 보다 편한 서비스 제공을 위해 리무진버스가 운영되고 있습니다.</span>
		</div>
		<div class="tab_nav">
			<ul>
				<li class="on"><a href="#">리무진버스예매</a></li>
				<li><a href="#">예매확인 </a></li>
				
				<h1>리무진 예약</h1>
	<div class="containers contain">
	  <button type="button" class="btn btn-info">공항 -> 도시</button>
	  <button type="button" class="btn btn-info">도시 -> 공항</button>
	  <button class="btn btn-info add">추가</button>
	  <button class="btn btn-danger del">삭제</button>
	  <button class="btn btn-warning gobooks">예매하기</button>
  		<div class="frm_wrap">
		   <form action="./limoBook"  method="post" class="frm">
		    	<input type="checkbox" value="frm_wrap" class="checkbox" style="display: inline-block;">
				<input type="text" placeholder="id" name="id">
				<input type="date" name="limoDate" class="limoDate datepicker">
				<select name="depLoc" class="depLoc">
					<option>출발지</option>
					<option value="인천공항" class="airLine">인천공항</option>
					<option value="김포공항" class="airLine">김포공항</option>
					<option value="양양공항" class="airLine">양양공항</option>
					<option value="청주공항" class="airLine">청주공항</option>
					<option value="대구공항" class="airLine">대구공항</option>
					<option value="무안공항" class="airLine">무안공항</option>
					<option value="여수공항" class="airLine">여수공항</option>
					<option value="김해공항" class="airLine">김해공항</option>
					<option value="울산공항" class="airLine">울산공항</option>
					<option value="제주공항" class="airLine">제주공항</option>
				</select>
				<span class="place"></span>
				<span class="place2"></span>
				<input type="text" placeholder="가격" name="limoPrice" class="price">
				<span class="price1"></span>
				<span class="price2"></span>
				<select name="limoTime" class="limoTime">
					<option>출발시간</option>
					<option value="06:00" class="time">06:00</option>
					<option value="09:00" class="time">09:00</option>
					<option value="12:00" class="time">12:00</option>
					<option value="15:00" class="time">15:00</option>
					<option value="18:00" class="time">18:00</option>
					<option value="21:00" class="time">21:00</option>
					<option value="24:00" class="time">24:00</option>
				</select>
				<input type="text" name="seat" placeholder="좌석" readonly="readonly" class="seat">
				<button type="button" class="btn btn-info btn-lg select">조회하기</button>
				<button type="button" class="btn btn-info btn-lg sel" data-toggle="modal" data-target="#myModal" style="display: none;">조회하기</button>
				<button type="button" class="books" style="display: none;">예매하기</button>
				
				<div class="containers" style="display: none;">
				  	<div class="frm_wrap2">
					    <div class="here">
					    	<input type="checkbox" value="frm_wrap2" class="checkbox" style="display: inline-block;">
							<input type="text" placeholder="id" name="id">
							<input type="date" name="limoDate" class="limoDate2 datepicker2">
							<select name="depLoc" class="depLoc2">
								<option>출발지</option>
								<option value="인천공항" class="airLine2">인천공항</option>
								<option value="김포공항" class="airLine2">김포공항</option>
								<option value="양양공항" class="airLine2">양양공항</option>
								<option value="청주공항" class="airLine2">청주공항</option>
								<option value="대구공항" class="airLine2">대구공항</option>
								<option value="무안공항" class="airLine2">무안공항</option>
								<option value="여수공항" class="airLine2">여수공항</option>
								<option value="김해공항" class="airLine2">김해공항</option>
								<option value="울산공항" class="airLine2">울산공항</option>
								<option value="제주공항" class="airLine2">제주공항</option>
							</select>
							<span class="place4"></span>
							<span class="place6"></span>
							<input type="text" placeholder="가격" name="limoPrice" class="price2">
							<select name="limoTime" class="limoTime2">
								<option>출발시간</option>
								<option value="06:00" class="time2">06:00</option>
								<option value="09:00" class="time2">09:00</option>
								<option value="12:00" class="time2">12:00</option>
								<option value="15:00" class="time2">15:00</option>
								<option value="18:00" class="time2">18:00</option>
								<option value="21:00" class="time2">21:00</option>
								<option value="24:00" class="time2">24:00</option>
							</select>
							<input type="text" name="seat" placeholder="좌석" readonly="readonly" class="seat2">
							<button type="button" class="btn btn-info btn-lg select2">조회하기</button>
							<button type="button" id="sel3" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2" style="display: none;">조회하기</button>
							<button type="button" class="bookssssssssssssss" style="display: none;">예매하기</button>
						</div>
					</div>
				  </div>
				<div class="hereeeer"></div>
			</form>
		</div>
	  </div>
	

	<!------------ Modal 시작 : 리무진 버스 예매 ------------>
	<div class="container">

		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">리무진 버스 예매</h4>
		        </div>
		        <div class="modal-body">
			        <div class="modal_wrap">
						<div class="limo_wrap" >
							<div class="limo_seat">
								<c:forEach begin="1" end="45" var="limo" varStatus="vo">
									<c:choose>
										<c:when test="${vo.current%4 eq 2 && vo.current lt 40}">
											<label class="limo" title="${vo.index}" style="margin-right: 43px; cursor: pointer;">
												<input type="checkbox" name="seat" class="lim" id="${vo.current}" value="${vo.current}" style="display: none;">		
											</label>
										</c:when>
										<c:otherwise>
											<label class="limo" title="${vo.index}" style="cursor: pointer;">
												<input type="checkbox" name="seat" class="lim" id="${vo.current}" value="${vo.current}" style="display: none;">
											</label>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${vo.current%4 eq 0 && vo.current lt 41}">
												<br>
										</c:when>
									</c:choose>
								</c:forEach>
							</div>
						</div>
						<div class="select_limoDate">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">예매일</div>
							<div class="select_limoDate_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_depLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발지</div>
							<div class="select_depLoc_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_arrLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">도착지</div>
							<div class="select_arrLoc_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_person">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">인원</div>
							<div class="select_person_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_price">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">이용가격</div>
							<div class="select_price_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_limoTime">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발시간</div>
							<div class="select_limoTime_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_seat">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">좌석</div>
							<div class="select_seat_text" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default complete">선택완료</button>
		          <button type="button" class="btn btn-default com2" data-dismiss="modal" style="display: none;">선택완료</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">창닫기</button>
		        </div>
		      </div>
		    </div>
		  </div>
</div>


<!------------------------------------------------ 편도 2회 예매 ------------------------------------------------------>

	

	<!------------ Modal 시작 : 리무진 버스 예매 ------------>
	<div class="container">

		  <div class="modal fade" id="myModal2" role="dialog">
		    <div class="modal-dialog">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">리무진 버스 예매</h4>
		        </div>
		        <div class="modal-body">
			        <div class="modal_wrap">
						<div class="limo_wrap" >
							<div class="limo_seat">
								<c:forEach begin="1" end="45" var="limo" varStatus="vo">
									<c:choose>
										<c:when test="${vo.current%4 eq 2 && vo.current lt 40}">
											<label class="limo" title="${vo.index}" style="margin-right: 43px; cursor: pointer;">
												<input type="checkbox" name="seat" class="lim2" id="two${vo.current}" value="${vo.current}" style="display: none;">		
											</label>
										</c:when>
										<c:otherwise>
											<label class="limo" title="${vo.index}" style="cursor: pointer;">
												<input type="checkbox" name="seat" class="lim2" id="two${vo.current}" value="${vo.current}" style="display: none;">
											</label>
										</c:otherwise>
										
									</c:choose>
									<c:choose>
										<c:when test="${vo.current%4 eq 0 && vo.current lt 41}">
												<br>
										</c:when>
									</c:choose>
								</c:forEach>
							</div>
						</div>
						<div class="select_limoDate">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">예매일</div>
							<div class="select_limoDate_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_depLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발지</div>
							<div class="select_depLoc_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_arrLoc">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">도착지</div>
							<div class="select_arrLoc_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_person">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">인원</div>
							<div class="select_person_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_price">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">이용가격</div>
							<div class="select_price_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_limoTime">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">출발시간</div>
							<div class="select_limoTime_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
						<div class="select_seat">
							<div style="font-size: 21px; font-weight: bold; margin-bottom: 20px; margin-left: 30px;">좌석</div>
							<div class="select_seat_text2" style="margin-left: 30px; font-size: 15px;"></div>
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default complete2">선택완료</button>
		          <button type="button" class="btn btn-default com2" data-dismiss="modal" style="display: none;">선택완료</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">창닫기</button>
		        </div>
		      </div>
		    </div>
		  </div>
</div>


	
<script type="text/javascript">
// 편도 1회 예매 --------------------------------------------------------------------------------------------------------

	// 지난 날 막기 : date함수
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 
	today = yyyy+'-'+mm+'-'+dd;
	
	$(".datepicker").attr('min', today);

	$(".depLoc").change(function(){
		var depLoc = $(this).val();
		$(".person option:eq(0)").prop("selected", true);
		$(".limoTime option:eq(0)").prop("selected", true);
		$(".price").val("");
		$(".seat").val("");
		
		$.ajax({
			type:'get',
			url:"./arrLoc",
			data:{
				"depLoc":depLoc,
				"sec":"1"
			},
			success : function(data){
				data = data.trim();
				$(".place").empty();
				$(".place").append(data);
			}
		})	
	});
		
	$('.select').click(function(){
		alert(person);
		alert(child);
		alert(totalperson);
		$(".lim").each(function(){
			$(this).prop("checked", false);
			$(this).prop('disabled', false);
			$(this).parent().removeClass('abcd');
			$(this).parent().removeClass('booked');
			count = 0;
			$(".select_seat_text").html("");
		});
		
		// 각각의 요소 선택안되고 있을 시 alert 창 띄우기
		if($(".limoDate").val() == ""){
			alert("날짜를 선택해주세요");
		}else if($(".depLoc option:eq(0)").prop("selected")){
			alert("출발지가 선택되지 않았습니다.");
		}else if($(".arrLoc option:eq(0)").prop("selected")){
			alert("도착지가 선택되지 않았습니다.")
		}else if($(".person option:eq(0)").prop("selected")){
			alert("인원을 선택해주세요");
		}else if($(".limoTime option:eq(0)").prop("selected")){
			alert("출발시간을 선택해주세요");
		}else{
			$(".sel").click();
		}


		$.ajax({
			type:'get',
			url:"./disabled",
			async: false,
			data:{
				"depLoc":$(".depLoc").val(),
				"arrLoc":$(".arrLoc").val(),
				"limoDate":$(".limoDate").val(),
				"limoTime":$(".limoTime").val(),
				"sec":"1"
			},
			success : function(data){
				data = data.trim();
				console.log(data);
				$('.place2').html(data);
			}
		});

		// 모달창 열릴 때 값들 넘기기
		var limoDate_M = $(".limoDate").val();
		$(".select_limoDate_text").html(limoDate_M);
		var depLoc_M = $(".depLoc").val();
		$(".select_depLoc_text").html(depLoc_M);
		var arrLoc_M = $(".arrLoc").val();
		$(".select_arrLoc_text").html(arrLoc_M);
		var person_M = $(".person").val();
		$(".select_person_text").html(person_M+"명");
		var price_M = $(".price").val();
		$(".select_price_text").html(price_M+"원");
		var limoTime_M = $(".limoTime").val();
		$(".select_limoTime_text").html(limoTime_M);

		// 선택불가 좌석 
		 $(".dis").each(function(){
			var checked = $(this).val();
			$("#"+checked).attr('disabled', true);
			$("#"+checked).parent().addClass("booked");
		}); 
	});

	// 모달창 인원수에 맞게 좌석 선택시 선택완료 진행
	$(".complete").click(function(){
		var seat = "";
		if(count < person){
			alert("인원수에 맞게 좌석을 선택해주세요");
		}else{
		$('.lim').each(function(){
			if($(this).is(":checked")){
				alert(this.value);
				seat = seat+this.value+'번';
			}
				$(".seat").val(seat);

				$(".com2").click();
			});
		}
	});
	
	// 출발지가 바뀌면 다른 값들 초기화
	var price = 0;
	$("body").on("change", ".arrLoc1", function(){
		$(".person option:eq(0)").prop("selected", true);
		$(".limoTime option:eq(0)").prop("selected", true);
		$(".price").val("");
		$(".seat").val("");
		price = $(".arrLoc1 option:selected").attr('id');
		price = price*1;
	});

	// 대인 & 소인 가격 산출하기 : 소인가격 = 대인가격 * 0.8
	var person = 0;
	var child = 0;
	var cal1 = 0;
	var totalperson = 0;
	var cal2 = 0;
	$("body").on("change", ".person1", function(){
		person = $(".person option:selected").val();
		person = person*1;
		cal1 = price * person;
		totalperson = person + child;
		$(".price").val(cal1+cal2);
		if(totalperson > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child option:eq(0)").prop("selected", true);
			$(".price").val(cal1);
		}
	});
	
	$("body").on("change", ".child1", function(){
		child = $(".child option:selected").val();
		child = child*1;
		cal2 = price * 0.8 * child;
		$(".price").val(cal1+cal2);
			totalperson = person + child;
		if(totalperson > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child option:eq(0)").prop("selected", true);
			$(".price").val(cal1);
		}
	});
	
	// 이용가능 좌석 빨간색 이미지로 바꾸기
	var count = 0;
	$(".lim").click(function(){
		var lim_M = $(this).val();
		if($(this).parent().hasClass('abcd')){
			$(this).parent().removeClass('abcd');
			// 모달 내 seat영역에 좌석번호 재 선택시 삭제
			$('#d'+lim_M).remove();
			count --;
		}else if(count < totalperson){
			$(this).parent().addClass('abcd');
			// 모달 내 seat영역에 좌석번호 추가
			$(".select_seat_text").append('<span id="d'+lim_M+'" class='+lim_M+'>'+lim_M+'번'+'</span>');
			count ++;
		}else{
			alert("더 이상 선택할 수 없습니다.");
			$(this).prop("checked", false);
		}
	});

	// 공항 -> 도시 추가
	var check = 0;
	var checkcheck = true;
	var parent = $(".frm_wrap").html();
		$(".add").click(function(){
		var frm = $(".frm_wrap2").html();
		if(check<1){
			if(checkcheck){
				//$(".frm_wrap").append(frm);
				$(".hereeeer").append(frm);
				check++;
			} else{
				//$(".frm_wrap").append(parent);
				$(".hereeeer").append(parent);
			alert(parent);
			}
		}else{
			alert("편도당 예매는 2번까지 가능합니다.");
		}
	});

	$(".del").click(function(){
		$(".checkbox").each(function(){
			if($(this).prop("checked")){
				var h = $(this).val();
				if(h == "frm_wrap"){
					console.log("frm_wrap");
					checkcheck = false;
				}else{
					checkcheck = true;
				}
				$(this).parent().remove();
				check --;
			}

			
		});
	});

	$(".gobooks").click(function(){
		$(".checkbox").each(function(){
			if($(this).prop("checked")){
				$(this).parent().submit();
			}
		});
	});

// 편도 2회 예매 --------------------------------------------------------------------------------------------------------
// 지난 날 막기 : date함수
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1;
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 
	today = yyyy+'-'+mm+'-'+dd;
	
	$(".datepicker2").attr('min', today);

	$("body").on("change", ".depLoc2", function(){
		var depLoc = $(this).val();
		$(".person2 option:eq(0)").prop("selected", true);
		$(".limoTime2 option:eq(0)").prop("selected", true);
		$(".price2").val("");
		$(".seat2").val("");
		
		$.ajax({
			type:'get',
			url:"./arrLoc",
			data:{
				"depLoc":depLoc,
				"sec":"2"
			},
			success : function(data){
				data = data.trim();
				$(".place4").empty();
				$(".place4").append(data);
			}
		})	
	});

	$("body").on("click", ".select2", function(){
		alert(person2);
		alert(child2);
		alert(totalperson2);
		$(".lim2").each(function(){
			console.log('lim2');
			$(this).prop('disabled', false);
			$(this).prop("checked", false);
			$(this).parent().removeClass('abcd');
			$(this).parent().removeClass('booked');
			count2 = 0;
			$(".select_seat_text2").html("");
		});
		
		// 각각의 요소 선택안되고 있을 시 alert 창 띄우기
		if($(".limoDate2").val() == ""){
			alert("날짜를 선택해주세요");
		}else if($(".depLoc2 option:eq(0)").prop("selected")){
			alert("출발지가 선택되지 않았습니다.");
		}else if($(".arrLoc2 option:eq(0)").prop("selected")){
			alert("도착지가 선택되지 않았습니다.")
		}else if($(".person2 option:eq(0)").prop("selected")){
			alert("인원을 선택해주세요");
		}else if($(".limoTime2 option:eq(0)").prop("selected")){
			alert("출발시간을 선택해주세요");
		}else{
			$("#sel3").click();
			
		}


		$.ajax({
			type:'get',
			url:"./disabled",
			async: false,
			data:{
				"depLoc":$(".depLoc2").val(),
				"arrLoc":$(".arrLoc2").val(),
				"limoDate":$(".limoDate2").val(),
				"limoTime":$(".limoTime2").val(),
				"sec":"2"
			},
			success : function(data){
				data = data.trim();
				console.log(data);
				$('.place2').html(data);
			}
		});

		// 모달창 열릴 때 값들 넘기기
		var limoDate_M = $(".limoDate2").val();
		$(".select_limoDate_text2").html(limoDate_M);
		var depLoc_M = $(".depLoc2").val();
		$(".select_depLoc_text2").html(depLoc_M);
		var arrLoc_M = $(".arrLoc2").val();
		$(".select_arrLoc_text2").html(arrLoc_M);
		var person_M = $(".person2").val();
		$(".select_person_text2").html(person_M+"명");
		var price_M = $(".price2").val();
		$(".select_price_text2").html(price_M+"원");
		var limoTime_M = $(".limoTime2").val();
		$(".select_limoTime_text2").html(limoTime_M);

		// 선택불가 좌석 
		 $(".dis").each(function(){
			 console.log('dis');
			var checked = $(this).val();
			$("#two"+checked).attr('disabled', true);
			$("#two"+checked).parent().addClass("booked");
		}); 
	});

	// 모달창 인원수에 맞게 좌석 선택시 선택완료 진행
	$(".complete2").click(function(){
		var seat2 = "";
		if(count2 < person2){
			alert("인원수에 맞게 좌석을 선택해주세요");
		}else{
		$('.lim2').each(function(){
			if($(this).is(":checked")){
				alert(this.value);
				seat2 = seat2+this.value+'번';
			}
				$(".seat2").val(seat2);

				$(".com2").click();
			});
		}
	});
	
	// 출발지가 바뀌면 다른 값들 초기화
	var price2 = 0;
	$("body").on("change", ".arrLoc2", function(){
		$(".person2 option:eq(0)").prop("selected", true);
		$(".limoTime2 option:eq(0)").prop("selected", true);
		$(".price2").val("");
		$(".seat2").val("");
		price2 = $(".arrLoc2 option:selected").prop("id");
		alert(price2);
		price2 = price2*1;
		console.log(price2);	
	});

	// 대인 & 소인 가격 산출하기 : 소인가격 = 대인가격 * 0.8
	var person2 = 0;
	var child2 = 0;
	var cal3 = 0;
	var totalperson2 = 0;
	var cal4 = 0;
	$("body").on("change", ".person2", function(){
		person2 = $(".person2 option:selected").val();
		person2 = person2*1;
		cal3 = price2 * person2;
		$(".price2").val(cal3+cal4);
		totalperson2 = person2 + child2;
		if(totalperson2 > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child2 option:eq(0)").prop("selected", true);
			$(".price2").val(cal3);
		}
	});
	
	$("body").on("change", ".child2", function(){
		child2 = $(".child2 option:selected").val();
		child2 = child2*1;
		cal4 = price2 * 0.8 * child2;
		$(".price2").val(cal3+cal4);
		totalperson2 = person2 + child2;
		if(totalperson2 > 5){
			alert("최대 5명까지만 예매할 수 있습니다.");
			$(".child2 option:eq(0)").prop("selected", true);
			$(".price2").val(cal3);
		}
	});
	
	// 이용가능 좌석 빨간색 이미지로 바꾸기
	var count2 = 0;
	$(".lim2").click(function(){
		var lim_M = $(this).val();
		if($(this).parent().hasClass('abcd')){
			$(this).parent().removeClass('abcd');
			// 모달 내 seat영역에 좌석번호 재 선택시 삭제
			$('#c'+lim_M).remove();
			count2 --;
		}else if(count2 < totalperson2){
			$(this).parent().addClass('abcd');
			// 모달 내 seat영역에 좌석번호 추가
			$(".select_seat_text2").append('<span id="c'+lim_M+'" class='+lim_M+'>'+lim_M+'번'+'</span>');
			count2 ++;
		}else{
			alert("더 이상 선택할 수 없습니다.");
			$(this).prop("checked", false);
		}
	});

	// 공항 -> 도시 추가
	var frm2 = $(".frm_wrap2").html();
	var check2 = 0;
	$(".add2").click(function(){
		if(check2<1){
			$(".frm_wrap2").append(frm2);
			check2++;
		}else{
			alert("편도당 예매는 2번까지 가능합니다.");
		}
	});

	$(".del2").click(function(){
		$(".checkbox2").each(function(){
			if($(this).prop("checked")){
				$(this).parent().remove();
				check2 --;
			}
		});
	});

</script>	
				
			</ul>
		</div>
		<div class="tab_container">
			<!-- 고속버스 예매 -->
			<div tabindex="0" class="tabContent on">
				<h2 class="ir">고속버스 예매</h2>
				<div class="route_box">
					<div class="tab_wrap tab_type1" id="rtrpYnAll">
						<div class="tab_cont">
							
							<p class="check" id="alcnSrchBtn">
								<!-- 버튼 활성화시 class추가 'active' -->
								<button type="button" class="btn_confirm ready noHover" onclick="fnAlcnSrch();" style="">조회하기</button>
								<!-- 170103 class명 추가 class = "btn_confirm ready" -->
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- //고속버스 예매 -->

			<!-- 예매확인 -->
			<div tabindex="0" class="tabContent">
				<h2 class="ir">예매확인</h2>
				<!-- 로그인 -->
				
					<div class="ticket_login_wrap">
						<div class="ticket_login custom_input">
							<form id="lgnFrm" name="lgnFrm">
								<input type="hidden" id="returnUrl" name="returnUrl" value="/mrs/mrscfm.do">
								<input type="hidden" id="popUpDvs" name="popUpDvs" value="N">
								<div class="member">
									<div class="login_title">
										<h3>회원 로그인</h3>
									</div>
									<div class="box_inputForm">
										<strong>아이디</strong> <span class="box_label"> <label for="usrId">아이디를 입력하세요</label> <input type="text" name="usrId" id="usrId" class="input">
										</span>
									</div>
									<div class="box_inputForm">
										<strong>비밀번호</strong> <span class="box_label"> <label for="usrPwd">비밀번호를 입력하세요</label> <input type="password" name="usrPwd" id="usrPwd" class="input" onkeydown="fnUsrSubmit();">
										</span>
									</div>
									<button type="button" class="btnL btn_confirm ready noHover" id="usrLgnBtn" onclick="fnlogin();">로그인</button>
									<!-- noHover -->
									<div class="login_forgot">
	                                    <a href="/spexp/mbrs/lgn/lgnSearchId.do">아이디 찾기</a>
	                                    <a href="/spexp/mbrs/lgn/lgnSearchPwd.do">비밀번호 찾기</a>
									</div>
								</div>
							</form>
							<form id="lgnNonUsrFrm" name="lgnNonUsrFrm">
								<input type="hidden" id="returnUrl" name="returnUrl" value="/mrs/mrscfm.do?vltlCnt=Y">
								<input type="hidden" id="popUpDvs" name="popUpDvs" value="N">
								<div class="no_member">
									<div class="login_title">
										<h3>비회원 예매확인</h3>
									</div>
									<div class="box_inputForm">
										<strong>휴대폰 번호</strong> <span class="box_label"> <label for="nombrsid">휴대폰번호를 입력하세요</label> <input type="text" name="nombrsid" id="nombrsid" class="input">
										</span>
									</div>
									<div class="box_inputForm">
										<strong>비밀번호</strong> <span class="box_label"> <label for="nombrspass">비밀번호를 입력하세요</label> <input type="password" name="nombrspass" id="nombrspass" class="input" onkeydown="fnNonUsrSubmit();">
										</span>
									</div>
									<button type="button" class="btnL btn_confirm ready noHover" id="nonUsrLgnBtn" onclick="NonUsrInsert();">조회하기</button>
									<!-- noHover -->
								</div>
							</form>
						</div>
					</div>
				
				<!-- // 로그인 -->
			</div>
			<!-- //예매확인 -->
		</div>
	</div>
</div>
<div class="content">
	<ul class="desc_list">
		<li>당일출발 차량의 경우 출발시간 1시간 전까지 홈페이지 예매가 가능하며 1시간 미만 출발임박 차량의 예매를
			원하시면 <span class="accent2">[EVERYAIR 모바일앱]</span>에서 예매하시기 바랍니다.
		</li>
		<li>1회 최대 예매 매수는 5매입니다.</li>
		<li>할인 승차권 부정 사용 시 운임의 10배 부가운임을 요구할 수 있습니다.</li>
	</ul>
	<h4>취소수수료</h4>
	<div class="tbl_type1">
		<table>
			<caption>취소수수료</caption>
			<colgroup>
				<col style="width: 70%;">
				<col style="width: auto">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">취소시기</th>
					<th scope="col">수수료</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>예매 당일 또는 승차일 2일전 취소<br>(단, 당일출발차량 예매 후 1시간 이후 취소는 수수료
						발생)
					</td>
					<td>없음</td>
				</tr>
				<tr>
					<td>예매 후 출발일 1일 전일부터 지정차 출발 1시간 전 취소<br>(단, 당일출발차량 예매 후
						1시간 이내 취소는 수수료 없음)
					</td>
					<td>승차권 요금의 5%</td>
				</tr>
				<tr>
					<td>예매 후 지정차 출발 1시간 이내 취소<br>(단, 당일출발차량 예매 후 1시간 이내 취소는
						수수료 없음)
					</td>
					<td>승차권 요금의 10%</td>
				</tr>
				<tr>
					<td>예매하신 지정차 출발 후 목적지 도착예정시간 전 취소</td>
					<td>승차권 요금의 30%</td>
				</tr>
			</tbody>
		</table>
	</div>
	<ul class="desc_list">
		<li>사용하지 않은 모든 승차권은 지정차 출발 후 도착예정시간이 지나면 환불하실 수 없습니다.</li>
		<li>취소수수료 산정은 날짜를 기준(시간 기준이 아님)으로 합니다.</li>
		<li>홈페이지 예매 후 창구에서 발권 시 예매에 사용한 신용카드를 반드시 지참하셔야 합니다. 현행법상 신용카드는
			타인에게 대여, 양도할 수 없습니다.</li>
		<li>홈티켓 발권 시 반드시 인쇄하신 홈티켓을 소지하시고 차량에 탑승하시기 바랍니다. 홈티켓 분실 시 <span class="accent2">[예매 확인/취소/변경]</span> 메뉴 혹은 출발지 터미널 창구에서 재발행 받으셔야 합니다.
		</li>
		<li>모바일 티켓으로 예매하시면 <span class="accent2">[EVERYAIR 모바일앱]</span>의
			[예매확인] 메뉴에서 승차권을 확인할 수 있습니다. 스마트폰에 고속버스 모바일앱을 설치하여 승차권을 확인하시고 차량에
			탑승하시기 바랍니다.
		</li>
		<li>본 홈페이지를 통한 승차권 예매는 실시간 온라인 처리가 되므로 회원장애나 기타 통신장애로 인하여 예매
			성공여부를 확인하지 못한 경우에는 반드시 [예매 확인/취소/변경] 메뉴를 통하여 성공여부를 확인하시기 바랍니다.</li>
		<li>출발시간이 지난 후에는 승차권을 발권받을 수 없습니다. 출발 당일 터미널 혼잡에 대비하여 출발시간보다 여유있게
			터미널에 도착하셔서 발권 받으시기 바랍니다.</li>
		<li>계좌이체를 이용할 경우 왕복 승차권 예매가 불가하오니 신용카드 결제 혹은 편도 승차권 예매를 이용하시기 바랍니다.</li>
	</ul>
	<div class="customer_box">
		<p class="desc">노선안내 및 좌석여부 기타사항은 각 출발지 터미널 안내센터를 이용해 주시기 바랍니다.</p>
		<!-- div class="info_tel">
			<span>고속버스 홈페이지 고객센터</span>
			<p>
				<strong>1588-6900</strong>(전국 국번없이)
			</p>
		</div -->
	</div>
</div>


<!-- footer -->
<div id="footer">
	<script type="text/javascript">
		if (/ip(hone|od)/i.test(navigator.userAgent)) {
			$(document).ready(function() {
				$('.family_site.select-box').addClass('iphone');
				$('.family_site.select-box select').selectric({
					disableOnMobile: false
				});
			});
		}
		function familySite(obj){
			if (obj.value != "") {
				window.open("http://" + obj.value,"","");				
			}
		}
	</script>
	<div class="family_site select-box">
		<div class="selectricWrapper selectric-select"><div class="selectricHideSelect"><select name="" id="" title="관련사이트" class="select" onchange="familySite(this);" tabindex="0">
			<option value="">관련사이트</option>
			<option value="www.tago.go.kr">국가대중교통정보센터</option>
			<option value="www.epassmobile.co.kr">고속버스모바일</option>
			<option value="www.intis.or.kr">인천장애인콜택시</option>
			<option value="www.centralcityseoul.co.kr">센트럴시티터미널</option>
			<option value="txbus.t-money.co.kr">시외버스통합예매</option>
		</select></div><div class="selectric"><p class="label">관련사이트</p><b class="button">▾</b></div><div class="selectricItems" tabindex="-1"><div class="selectricScroll"><ul><li class="selected">관련사이트</li><li class="">국가대중교통정보센터</li><li class="">고속버스모바일</li><li class="">인천장애인콜택시</li><li class="">센트럴시티터미널</li><li class="last">시외버스통합예매</li></ul></div></div><input class="selectricInput" tabindex="0"></div>
	</div>
	<div class="foot_bottom clfix">
		<div class="foot_cont">
			<p class="foot_menu">
				<a href="/spexp/etc/svcstpl/SvcStpl.do">서비스 이용약관</a>
				<a href="/spexp/etc/indlstpl/IndlStpl.do">개인정보 처리방침</a>
				<a href="/spexp/etc/busstpl/BusStpl.do">고속버스 운송약관</a>
				<!-- <a href="/spexp/etc/cmsstpl/CmsStpl.do">전자금융거래 이용약관</a> -->
				<a>고객센터 1644-9030</a>
			</p>
			<p class="foot_addr">서울특별시 서초구 신반포로 194 <span class="mo_block">통신판매업신고: 2009-서울서초 0587호 대표자 : 박명주</span></p>
			<p class="foot_copy">COPYRIGHT© 2016. WWW.KOBUS.CO.KR . ALL RIGHT RESERVED</p>
			<p class="foot_com">
				<a href="#"><img src="/images/common/sfoot_com1.png" alt="KOBUS 전국고속버스운송사업조합"></a>
				<a href="#"><img src="/images/common/sfoot_com2.png" alt="전국여객자동차터미널사업자협회"></a>
			</p>
		</div>
	</div>
</div>
<!-- //footer -->
	</div>
	
	

<!-- 로그인 레이어팝업 -->
<div class="loading" id="loading" style="height: 80%; top: 100px;"><p class="load" style="margin-left: -53px;"></p></div>

<!-- // 로그인 팝업 -->
		
	

<!-- 임시비밀번호 변경 / 180일 경과 변경 -->
		
<form name="lgnForm"><input type="hidden" id="returnUrl" name="returnUrl" value="logout"></form><!-- 임시비밀번호 / 180일 경과 비밀번호 -->
	
	
<!-- 190129 추가 - 휴면 회원 알림 안내 -->

<!-- //190129 추가 - 휴면 회원 알림 안내 -->

<!-- 190129 추가 - 휴면 회원 해제 -->

<!-- //190129 추가 - 휴면 회원 해제 -->
<!-- 휴면회원 -->


<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all"><a class="ui-datepicker-prev ui-corner-all ui-state-disabled" title="이전달"><span class="ui-icon ui-icon-circle-triangle-w">이전달</span></a><a class="ui-datepicker-next ui-corner-all" data-handler="next" data-event="click" title="다음달"><span class="ui-icon ui-icon-circle-triangle-e">다음달</span></a><div class="ui-datepicker-title"><span class="ui-datepicker-year">2020</span>.&nbsp;<span class="ui-datepicker-month">1</span></div></div><table class="ui-datepicker-calendar"><thead><tr><th scope="col" class="ui-datepicker-week-end"><span title="일요일">일</span></th><th scope="col"><span title="월요일">월</span></th><th scope="col"><span title="화요일">화</span></th><th scope="col"><span title="수요일">수</span></th><th scope="col"><span title="목요일">목</span></th><th scope="col"><span title="금요일">금</span></th><th scope="col" class="ui-datepicker-week-end"><span title="토요일">토</span></th></tr></thead><tbody><tr><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">1</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">2</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">3</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">4</span></td></tr><tr><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">5</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">6</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">7</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">8</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">9</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">10</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">11</span></td></tr><tr><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">12</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">13</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">14</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">15</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">16</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">17</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">18</span></td></tr><tr><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">19</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">20</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">21</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">22</span></td><td class=" ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today" data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default ui-state-highlight ui-state-active ui-state-hover" href="#">23</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default" href="#">24</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default" href="#">25</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default" href="#">26</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default" href="#">27</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default" href="#">28</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default" href="#">29</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default" href="#">30</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="0" data-year="2020"><a class="ui-state-default" href="#">31</a></td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td></tr></tbody></table></div><div style="left: -1000px; overflow: scroll; position: absolute; top: -1000px; border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"><div style="border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"></div></div><div class="remodal-overlay remodal-is-closed" style="display: none;"></div><div class="remodal-wrapper remodal-is-closed" style="display: none;"><div class="remodal pop_place full remodal-is-initialized remodal-is-closed" data-remodal-id="popPlace" role="dialog" tabindex="-1">
	<div class="title">
		출/도착지 선택
		<button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
	</div>
	<div class="cont">
		<div class="place"> <!-- focus -->
			<ul>
				<li id="popDeprChc"> <!--  class="focuson" -->
					<span class="stit">출발지</span>
					<p class="text empty"><span class="empty_txt">선택</span><span class="val_txt" id="popDeprNmSpn"></span></p>
				</li>
				<li id="popArvlChc">
					<span class="stit">도착지</span>
					<p class="text empty"><span class="empty_txt">선택</span><span class="val_txt" id="popArvlNmSpn"></span></p>
				</li>
			</ul>
			<p class="btn_change">출,도착지 교체</p>
		</div>
		<div class="search_wrap">
			<p> <!--  class="focus" -->
				<input type="text" id="terminalSearch" title="터미널/지역 이름 검색" placeholder="터미널/지역 이름을 검색하세요"><span class="btn">검색</span>
			</p>
		</div>
		<div class="start_wrap" id="imptDepr" style="display: block;">
			<p class="stit">주요출발지</p>
			<p class="tags">
				<span onclick="fnDeprChc('010','서울경부')" name="imptDeprNm" value="010">서울경부</span>
				<span onclick="fnDeprChc('020','센트럴시티(서울)')" name="imptDeprNm" value="020" class="over">센트럴시티(서울)</span>
				<span onclick="fnDeprChc('500','광주(유·스퀘어)')" name="imptDeprNm" value="500">광주(유·스퀘어)</span> <!--  class="active" -->
				<span onclick="fnDeprChc('700','부산')" name="imptDeprNm" value="700">부산</span>
				<span onclick="fnDeprChc('703','부산사상')" name="imptDeprNm" value="703">부산사상</span>
				<span onclick="fnDeprChc('032','동서울')" name="imptDeprNm" value="032">동서울</span>
				<span onclick="fnDeprChc('300','대전복합')" name="imptDeprNm" value="300">대전복합</span>
				<span onclick="fnDeprChc('602','전주')" name="imptDeprNm" value="602">전주</span>
				<span onclick="fnDeprChc('360','유성')" name="imptDeprNm" value="360">유성</span>
				<span onclick="fnDeprChc('310','천안')" name="imptDeprNm" value="310">천안</span>
				<span onclick="fnDeprChc('801','동대구')" name="imptDeprNm" value="801">동대구</span>
			</p>
		</div>
		<div class="terminal_wrap">
			<p class="stit">지역별 터미널</p>
			<div class="ternimal_box">
				<div class="scroll-wrapper area_scroll scrollbar-inner" style="position: relative;"><div class="area_scroll scrollbar-inner scroll-content" style="height: 420px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
					<ul class="area_list">
						<li class="active" id="areaListAll"><span onclick="fnDeprArvlViewList('all');">전체</span></li>
						<li><span onclick="fnDeprArvlViewList('11');">서울</span></li>
						<li><span onclick="fnDeprArvlViewList('28');">인천/경기</span></li>
						<li><span onclick="fnDeprArvlViewList('42');">강원</span></li>
						<li><span onclick="fnDeprArvlViewList('30');">대전/충남</span></li>
						<li><span onclick="fnDeprArvlViewList('43');">충북</span></li>
						<li><span onclick="fnDeprArvlViewList('29');">광주/전남</span></li>
						<li><span onclick="fnDeprArvlViewList('45');">전북</span></li>
						<li><span onclick="fnDeprArvlViewList('26');">부산/경남</span></li>
						<li><span onclick="fnDeprArvlViewList('27');">대구/경북</span></li>
					</ul>
				</div><div class="scroll-element scroll-x"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div><div class="scroll-element scroll-y"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div></div>
				<div class="terminal_list" id="terminalList">
					<div class="scroll-wrapper terminal_scroll scrollbar-inner" style="position: relative;"><div class="terminal_scroll scrollbar-inner scroll-content" style="height: 420px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
						<ul class="clear" id="tableTrmList"><!--  출발지 터미널 --></ul>
					</div><div class="scroll-element scroll-x"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div><div class="scroll-element scroll-y"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar"></div></div></div></div>
				</div>
			</div>
		</div>
	</div>
	<div class="btns">
		<!-- <button data-remodal-action="confirm" class="remodal-confirm ready" id="cfmBtn" onclick="fncfmBtnChc()">선택완료</button> 버튼활성화시 'ready' class가 없음 -->
	</div>
</div></div><div class="remodal-wrapper remodal-is-closed" style="display: none;"><div class="remodal w590 popLogin full remodal-is-initialized remodal-is-closed" data-remodal-id="popLogin" role="dialog" tabindex="-1">
	<div class="title type_blue">
		로그인
		<button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
	</div>
	<form id="lgnUsrInfForm" name="lgnUsrInfForm">
		<input type="hidden" id="returnUrl" name="returnUrl" value="/spexp/main.do">
		<div class="cont">
			<div class="login_wrap pop">
				<div class="box_login">
					<h3 class="pop_h3 mob_h3">회원 로그인</h3>
					<p class="h3_desc">회원으로 예매하시면 예매 후 아이디/비밀번호로 간편하게 조회가 가능합니다.</p>
					<div class="inner">
						<fieldset>
							<legend>회원로그인</legend>
							<ul class="loginList">
								<li>
									<div class="box_inputForm">
										<strong>아이디</strong>
										<span class="box_label">
											<label for="usrIdPup">아이디를 입력하세요</label>
											<input type="text" name="usrId" id="usrIdPup" class="input">
										</span>
									</div>
								</li>
								<li>
									<div class="box_inputForm">
										<strong>비밀번호</strong>
										<span class="box_label">
											<label for="usrPwdPup">비밀번호를 입력하세요</label>
											<input type="password" name="usrPwd" id="usrPwdPup" class="input">
										</span>
									</div>
								</li>
							</ul>
						</fieldset>
						<p class="btn_squareBox"><button type="button" class="btn_confirm ready" onclick="fnMngChkCfm();">로그인</button></p>
					</div>
				</div>
				<!-- 20170920 추가 -->
	            <div class="login_forgot mt0 black">
	                <a href="/spexp/mbrs/lgn/lgnSearchId.do">아이디 찾기</a>
	                <a href="/spexp/mbrs/lgn/lgnSearchPwd.do">비밀번호 찾기</a>
	            </div>
	            <!-- // 20170920 추가 -->	
			</div>
		</div>
	</form>
</div></div><div class="remodal-wrapper remodal-is-closed" style="display: none;"><div class="remodal pop_change_password remodal-is-initialized remodal-is-closed" data-remodal-id="popChangePassword" role="dialog" data-remodal-options="closeOnOutsideClick:false" tabindex="-1">
<form name="pwdModLsapForm" method="post" onsubmit="return false;">
	<input type="hidden" name="mbr_mng_no" id="mbr_mng_no" value="">	
	<div class="title">
		비밀번호 변경
		<button data-remodal-action="close" class="remodal-close" aria-label="Close" onclick="logoutLgn();"></button>
	</div>
	<div class="cont">
		<div id="oldPwdChgDiv" style="display: none;">
			<h3 class="pop_h3">고객님께서는 오랜 기간(180일) 비밀번호를 변경하지 않으셨습니다.</h3>
	        <p class="desc">동일한 비밀번호를 장기간 사용할 경우 개인정보 도용 및 유출 등의 위험이 있습니다.<br>
			비밀번호를 변경해주세요.</p>		
		</div>
		<div id="tmpPwdChgDiv" style="display: none;">
	        <h3 class="pop_h3">스스로 지키는 개인정보! 비밀번호를 변경해주세요.</h3>
	        <p class="desc">현재 고객님께서는 <span class="txt_red">임시로 발급된 비밀번호</span>를 사용하고 계십니다.<br>
	        고객님의 소중한 개인정보를 안전하게 지키기 위해 비밀번호를 변경해 주세요.<br>개인정보 도용을 최대한 방지하기 위해 <span class="txt_red">비밀번호 변경절차</span>를 거치신 후에만 서비스 이용이 가능합니다.</p>
        </div>
        <p class="desc"><strong>[안전한 비밀번호 설정 방법] <span class="txt_red">영문, 숫자 조합하여 8자리 이상</span></strong></p>
        <div class="box_inputForm">
            <strong>현재 비밀번호</strong>
            <span class="box_label">
                <label for="usrOldPw">현재 비밀번호를 입력하세요</label>
                <input type="password" name="usrOldPw" id="usrOldPw" class="input" onkeyup="fnIcoCheck();"> 
            </span>
            <span class="ico_complete" style="display: none;">가능</span><!-- 사용가능 아이콘 -->
        </div>
        <div class="box_inputForm" id="pwdDiv">
            <strong>새 비밀번호</strong>
            <span class="box_label">
                <label for="usrNewPwd">영문,숫자 8자리 이상</label>
                <input type="password" name="usrNewPwd" id="usrNewPwd" class="input" onkeyup="fnPwdLenCheck(this);" onblur="fnPwdVldtCheck(this);"> 
            </span>
            <span class="ico_complete" style="display: none;">가능</span><!-- 사용가능 아이콘 -->
        </div>
        <div class="box_inputForm" id="pwdCfmDiv">
            <strong>새 비밀번호 확인</strong>
            <span class="box_label">
                <label for="pwdCfmCheck">새 비밀번호를 재입력하세요</label>
                <input type="password" name="pwdCfmCheck" id="pwdCfmCheck" class="input" onkeyup="fnPwdCfmCheck(this);" onblur="fnPwdCfmCheck(this);"> 
            </span>
            <span class="ico_complete" style="display: none;">가능</span>
        </div>
        <ul>
            <li>비밀번호 변경 시 고속버스 모바일앱 에서도 동일하게 적용됩니다.</li>
        </ul>
        <p class="btn_squareBox" id="oldPwdChgP" style="display: none;">
			<button type="button" class="btn_confirm" onclick="fnUpdatePwd();">변경하기</button>
			<button type="button" class="btn_normal" onclick="nextChgPwd();">180일 뒤에 변경하기</button>
		</p>
		<p class="btn_squareBox" id="tmpPwdChgP" style="display: none;">
			<button type="button" class="btn_confirm" onclick="fnUpdatePwd();">변경하기</button>
		</p>
    </div>
</form>    
</div></div><div class="remodal-wrapper remodal-is-closed" style="display: none;"><div class="remodal pop_dormant_account remodal-is-initialized remodal-is-closed" data-remodal-id="popDormantMember" role="dialog" data-remodal-options="closeOnOutsideClick:false" tabindex="-1">
	<div class="title">
		휴면 회원 알림 안내
		<button data-remodal-action="close" class="remodal-close" aria-label="Close" onclick="logoutLgn();"></button>
	</div>
	<div class="cont">
		<p class="txt">정보통신망 이용 촉진 및 정보보호 등에 관한 법률 제29조 제2항의 개인정보 유효기간제에 따라 장기간 동안 사용 이력이 없는 회원을 대상으로 휴면 정책이 적용 되고 있습니다.</p>
		<p class="txt">고객님께서는 1년 이상 접속하지 않으셨기 때문에 휴면 정책이 적용되어 서비스 이용이 불가 합니다.</p>
		<p class="txt">하기 휴면 회원 해제 서비스를 통해 휴면 회원 해제를 진행하시기 바랍니다.</p>
	</div>
	<div class="btns">
		<button class="remodal-confirm" onclick="popRemoveDormantShow();">휴면 회원 해제하기</button>
		<button class="remodal-cancel" onclick="fnPass();">다음에 하기</button>
		
	</div>
</div></div><div class="remodal-wrapper remodal-is-closed" style="display: none;"><div class="remodal pop_remove_dormant remodal-is-initialized remodal-is-closed" data-remodal-id="popRemoveDormant" role="dialog" data-remodal-options="closeOnOutsideClick:false" tabindex="-1">
	<div class="title type_blue">
		휴면 회원 해제
		<button data-remodal-action="close" class="remodal-close" aria-label="Close" onclick="logoutLgn();"></button>
	</div>
	<form name="dormantForm" method="post" onsubmit="return false;">
	<input type="hidden" name="mbrMngNo" id="mbrMngNo" value="">
	<div class="cont">
		<div class="login_wrap pop">
			<div class="box_login">
				<p class="h3_desc">휴면 회원 해제를 위해 비밀번호를 입력하세요.</p>
				<div class="inner">
					<fieldset>
						<legend>휴면 회원 해제</legend>
						<ul class="loginList">
							<li>
								<div class="box_inputForm">
									<strong>비밀번호</strong>
									<span class="box_label">
										<label for="s_ID02">영문,숫자 8자리 이상</label>
										<input type="password" name="pwd" id="pwd" class="input"> 
									</span>
								</div>
							</li>
						</ul>
					</fieldset>
					<p class="btn_squareBox"><button type="button" class="btn_confirm" onclick="fnDormantClear();">해제하기</button></p>
				</div>
			</div>
		</div>
	</div>
	</form>    
</div>
</div>

</body>
</html>