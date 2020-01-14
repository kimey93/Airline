<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

booking write
<div>
반드시 실제 탑승하실 분의 성명을 입력하십시오. (예약 후 변경이 불가합니다)
외국 국적이신 경우 성함을 여권상 영문으로 입력하여 주시기 바랍니다.
탑승 완료 후에는 소급하여 할인을 적용 받을 수 없으므로 할인 대상 손님께서는 항공권 구입, 탑승 시 할인 증빙서류를 소지하여 주시기 바랍니다.
스타얼라이언스 회원사로 마일리지 적립을 원하는 경우 반드시 영문 성함으로 입력하여 주시기 바랍니다. 공동운항편은 스타얼라이언스 회원사로 마일리지 적립이 불가합니다.
정보통신망법 제17조의2(법정대리인 동의의 확인방법) 강화 시행령에 따라 만 14세 미만 미성년자 예매 시 법정대리인의 동의 및 인증이 불가피하므로 14세 이상의 성인께서 로그인 후 예매진행을 해 주시기 바랍니다.
임신 32주 이상의 임신부 고객은 탑승이 제한될 수 있으니 사전에 확인하시기 바랍니다. (37주 이상은 탑승불가)
</div>



<div>

<div> 
탑승자 정보

<table>

<tr><td colspan="2">성인1</td> </tr>

<tr> 
<td>성별</td> 
<td>여<input type="radio" name="sex" value="여"> 남<input type="radio" name="sex" value="남">  </td>
</tr>

<tr>
<td>이름</td> 
<td><input type="text" placeholder="성(신분증언어)"> <input type="text" placeholder="이름(신분증언어)"> </td>
</tr>

<tr>
<td>생년월일</td>
<td> 

<select> 
<option selected="selected">년</option>
<c:forEach begin="1910" end="2020" varStatus="status">
<option>${status.index}</option>
</c:forEach>
</select> 

<select> 
<option selected="selected">월</option>
<c:forEach begin="1" end="12" varStatus="status">
<option>${status.index}</option>
</c:forEach>
</select> 

<select> 
<option selected="selected">일</option>
<c:forEach begin="1" end="31" varStatus="status">
<option>${status.index}</option>
</c:forEach>
</select> 
</td>
</tr>

<tr>
<td>회원번호(탑승객)</td>
<td><input type="text" placeholder="회원번호"></td>
</tr>

<tr>
<td>개인할인(가는편)</td>
<td> 
<select>
<option>개인할인 선택 안함</option>
<option>[30%] 장애인 1~3급</option>
<option>[10%] 장애인 4~6급</option>
<option>[30%] 장애인 1~3급 동반 보호자 1인</option>
<option>[10%] 현역군인(휴가증소지의 의무복무사병)</option>
<option>[10%] 고엽제 후유증 환자</option>
<option>[30%] 국가유공상이 4급 동반 보호자 1인</option>
<option>[30%] 5.18민주유공 1~4급 동반 보호자 1인</option>
<option>[30%] 국가유공상이 1~3급 동반 보호자 1인</option>
<option>[30%] 독립유공자 동반 보호자 1인</option>
<option>[10%] 독립유동자 유족증소지자</option>
<option>[30%] 독립유공자</option>
<option>[10%] 국가유공자/5.18민주유공자/월남전 참전유공자 &#38; 유공자 유족증 소지자</option>
<option>[30%] 국가유공상이자 &#38; 5.18민주유공부상자</option>
</select>

 </td>
</tr>

<tr>
<td>개인할인(오는편)</td>
<td>
<select>
<option>개인할인 선택 안함</option>
<option>[30%] 장애인 1~3급</option>
<option>[10%] 장애인 4~6급</option>
<option>[30%] 장애인 1~3급 동반 보호자 1인</option>
<option>[10%] 현역군인(휴가증소지의 의무복무사병)</option>
<option>[10%] 고엽제 후유증 환자</option>
<option>[30%] 국가유공상이 4급 동반 보호자 1인</option>
<option>[30%] 5.18민주유공 1~4급 동반 보호자 1인</option>
<option>[30%] 국가유공상이 1~3급 동반 보호자 1인</option>
<option>[30%] 독립유공자 동반 보호자 1인</option>
<option>[10%] 독립유동자 유족증소지자</option>
<option>[30%] 독립유공자</option>
<option>[10%] 국가유공자/5.18민주유공자/월남전 참전유공자 &#38; 유공자 유족증 소지자</option>
<option>[30%] 국가유공상이자 &#38; 5.18민주유공부상자</option>
</select>
</td>
</tr>


</table>

</div>


<div>
예약자 연락처 정보

<table>
<tr>
<td>이메일</td>
<td>
<input type="email">
<input type="checkbox"> 이메일 항공권 수신동의
</td>
</tr>

<tr>
<td>전화번호</td>
<td>
<input type="text">
<input type="checkbox"> SMS 수신동의
</td>
</tr>
</table>


</div>





</div>




</body>
</html>