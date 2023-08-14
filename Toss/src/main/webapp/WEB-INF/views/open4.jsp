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
        
        $(document).ready(function() {
        	$("input:radio[name='yn']").click(function() {
        		if ($("input[name='yn']:checked").val() == '1') {
        			alert("해외에 납세 의무가 있으신가요? 미국 시민권자 또는 영주권자이거나 대한민국 외 국가의 세법상 거주자라면 납세관련 정보를 제출해야 해요. 제출된 정보와 금융정보는 관련 법령에 따라 납세의무 국가에 제공될 수 있어요.");
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
<h1>안전한 금융거래를 위해 아래의 내용을 확인해주세요</h1>
거래목적<p>
<select name="purpose" id="purpose" style="width: 200px; height: 30px">
			<option value="1">생활비</option>
			<option value="2">대출</option>
			<option value="3">저축 및 투자</option>
			<option value="4">연금</option>
		</select>
		<br>
		<br>
자금출처<p>
<select name="from" id="from" style="width: 200px; height: 30px">
			<option value="1">생활비</option>
			<option value="2">용돈</option>
			<option value="3">금융 소득</option>
			<option value="4">퇴직금</option>
			<option value="5">임대 소득</option>
			<option value="6">상속∙증여</option>
		</select>
		<br>
		<br>
		해외에 세금을 내고 있나요?
	<div class="tax">
		<input type="radio" name="yn" value="1" id="y" class="yn">
		<label for="y">네</label> <input type="radio" name="yn" value="0"
			id="n" class="yn" checked> <label for="n">아니요</label>
	</div>
<button type="submit" class="yesbutton" onclick="link('open5')">확인했어요</button>


  
</body>
</html>