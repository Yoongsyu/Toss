<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="./js/jquery-3.7.0.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="./css/list.css">
</head>
<body>

	<!-- 
<div class="abutton">
<button type="button" id="btn1">총자산 금액 : 원</button><br>
<button type="button" id="btn2">토스 계좌 : 원</button><br>
<button type="button" id="btn3">${abank } 은행 : ${abalance }원</button><br>
<button type="button" id="btn4">${abank }신한 은행 : ${abalance }원</button><br>
<button type="button" id="btn5">${abank }농협 은행 : ${abalance }원</button><br>
</div>
<div class="abutton2">
<button type="button" id="btn11">송금</button><br>
<button type="button" id="btn22">송금</button><br>
<button type="button" id="btn33">송금</button><br>
<button type="button" id="btn44">송금</button><br>
<button type="button" id="btn55">송금</button><br>
</div> 
-->


	<div class="accList">

	<button type="button" class="btn1">
	<div class="total">총자산금액</div>
	<div class="totalbalance">
	<c:out value="${totalbalance}" /> 원</div>

	
	<button type="button" class="btn1">
		<div class="tossbank">토스뱅크</div>
		<div class="tossbalance">${a.abalance }원</div>
</button>
		<c:forEach items="${accountList}" var="a">
				<button type="button" class="btn1">
			<div class="acc">
					<div class="bankbalance">${a.abank }은행<span class="balance-margin">${a.abalance }원</div>
					<!-- <div class="aacnum">${a.aaccount }</div>  -->
					<button type="button" >송금</button>
			</div>
				</button>
		</c:forEach>
	</div>


</body>
</html>