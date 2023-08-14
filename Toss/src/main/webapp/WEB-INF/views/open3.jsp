<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">

	function link(url) {
		window.location.href = url;
	}


	// $('#selectPay_phone').hide();   // 초깃값 설정
	$(document).ready(function() {
	$("input:radio[name='yn']").click(function() {
		if ($("input[name='yn']:checked").val() == '1') {
			alert("${mname}님이 쓸 계좌만 만들 수 있어요 자금 세탁 방지를 위해, 다른 사람이 쓸 계좌는 만들 수 없어요");
			$('.yesbutton').attr('disabled', true);
		} else {
			$('.yesbutton').attr('disabled', false);
		}
	});
	 });

</script>


<title>Insert title here</title>
</head>
<body>
	<h1>${mname }님의 정보를 확인해주세요</h1>
	이름
	<p>${mname }
	<p>휴대폰 번호
	<p>${mphone }
	<p>직업
	<p>
		<select name="job" id="job" style="width: 200px; height: 30px">
			<option value="1">직장인</option>
			<option value="2">전문직</option>
			<option value="3">공무원</option>
			<option value="4">자영업자</option>
			<option value="5">프리랜서</option>
			<option value="6">주부</option>
			<option value="7">학생</option>
			<option value="8">무직</option>
			<option value="9">기타</option>
		</select>
	<p>${mname }님이 쓸 계좌인가요?
	<div class="yes">
		<input type="radio" name="yn" value="0" id="y" class="yn" checked>
		<label for="y">네</label> <input type="radio" name="yn" value="1"
			id="n" class="yn"> <label for="n">아니요</label>
	</div>

	<button class="yesbutton" type="submit" id="yesbutton" name="yesbutton" onclick="link('open4')">
	확인</button>
</body>
</html>