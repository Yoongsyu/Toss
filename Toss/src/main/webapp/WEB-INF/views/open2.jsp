<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
	//전체 동의
	$(document).ready(
					function() {$("#chkAll").click(
										function() {
											if ($("#chkAll").is(":checked"))
												$(
														"input[name=chk], input[name=chk2], input[name=chkEssential]")
														.prop("checked", true);
											else
												$(
														"input[name=chk], input[name=chk2], input[name=chkEssential]")
														.prop("checked", false);
										});

						$("input[name=chk], input[name=chk2]")
								.click(
										function() {
											var total = $("input[name=chk], input[name=chk2]").length;
											var checked = $("input[name=chk], input[name=chk2]:checked").length;

											if (total != checked)
												$("#chkAll").prop("checked",
														false);
											else
												$("#chkAll").prop("checked",
														true);
										});
					});

	//필수 전체 동의
	$(document).ready(function() {
		$("#chkEssential").click(function() {
			if ($("#chkEssential").is(":checked"))
				$("input[name=chk]").prop("checked", true);
			else
				$("input[name=chk]").prop("checked", false);
		});

		$("input[name=chk]").click(function() {
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;

			if (total != checked)
				$("#chkEssential").prop("checked", false);
			else
				$("#chkEssential").prop("checked", true);
		});
	});

	//동의해야 이동
	$(function() {
		$(".fpmgBt2").click(function() {
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;

			if (total == checked) {
				location.href = "./open3";
				return true;
			} else {
				alert("필수항목에 동의해주세요.");
				return false;
			}
		});
	});
</script>
<script>
	function link(url) {
		window.location.href = url;
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<form action="./open3" id="OpenForm">
		<ul class="open_box">
			<li class="checkBox check01">
				<ul class="clearfix">
					<h2>통장에 꼭 필요한 설명서와 동의만 추렸어요</h2>
					<li>전체 약관 모두 체크하기</li>
					<li class="checkAll"><input type="checkbox" name="chkAll"
						id="chkAll" class="chkAll"></li>
					<li>필수 약관 모두 체크하기</li>
					<li class="checkEssentialBtn"><input type="checkbox"
						name="chkEssential" id="chkEssential" class="chkAll"></li>
				</ul>
			</li>

			<br>

			<li class="checkBox check02">
				<ul class="clearfix">
					<li>[필수]전자금융거래 기본약관 동의</li>
					<li class="checkBtn"><input type="checkbox" name="chk">
					</li>
				</ul> <textarea name="" id="">
                    ▣ 전자금융거래기본약관
제1조(목적)
이 약관은 토스뱅크(이하 "은행"이라 합니다.)와 이용자 사이의 전자금융거래에 관한 기본적인 사항을 정함으로써, 거래의 신속하고 효율적인 처리를 도모하고 거래당사자 상호간의 이해관계를 합리적으로 조정하는 것을 목적으로 합니다.

제2조(용어의 정의)
① 이 약관에서 사용하는 용어의 의미는 다음 각호와 같습니다.

1. "전자금융거래"라 함은 은행이 전자적 장치를 통하여 제공하는 금융상품 및 서비스를 이용자가 전자적 장치를 통하여 비대면·자동화된 방식으로 직접 이용하는 거래를 말합니다.
2. "이용자"라 함은 전자금융거래를 위하여 은행과 체결한 계약(이하 "전자금융거래계약"이라 합니다.)에 따라 전자금융거래를 이용하는 고객을 말합니다.
3. "지급인"이라 함은 전자금융거래에 의하여 자금이 출금되는 계좌(이하 "출금계좌"라 합니다.)의 명의인을 말합니다.
4. "수취인"이라 함은 전자금융거래에 의하여 자금이 입금되는 계좌(이하 "입금계좌"라 합니다.)의 명의인을 말합니다.
5. "전자적 장치"라 함은 현금자동지급기, 자동입출금기, 지급용단말기, 컴퓨터, 전화기 그 밖에 전자적 방법으로 전자금융거래정보를 전송하거나 처리하는데 이용되는 장치를 말합니다.
6. "접근매체"라 함은 전자금융거래에 있어서 거래지시를 하거나 이용자 및 거래내용의 진정성을 확보하기 위하여 사용되는 다음 각목의 어느 하나에 해당하는 수단 또는 정보를 말합니다.
가. 은행이 제공한 전자식 카드 및 이에 준하는 전자적 정보
나.「전자서명법」에 따른 전자서명생성정보 또는 인증서
다. 은행에 등록된 이용자 번호
라. 등록되어 있는 이용자의 생체정보
마. 가목 또는 나목의 수단이나 정보를 사용하는 데 필요한 비밀번호
7. "전자문서"라 함은 「전자거래기본법」 제2조 제1호의 규정에 따라 작성, 송신·수신 또는 저장된 정보를 말합니다.
8. "거래지시"라 함은 이용자가 전자금융거래계약에 의하여 은행에 개별적인 전자금융거래의 처리를 지시하는 것을 말합니다.
9. "오류"라 함은 이용자의 고의 또는 과실 없이 전자금융거래가 약관(개별약관을 포함합니다.), 전자금융거래계약 또는 이용자가 거래지시한 대로 이행되지 아니한 경우를 말합니다.
10. "계좌송금"이라 함은 이용자가 자동입출금기를 통하여 자기 또는 타인의 계좌에 자금을 입금하는 것을 말합니다.
11. "계좌이체"라 함은 지급인의 전자적 장치를 통한 지급지시에 따라 은행이 지급인의 출금계좌에서 자금을 출금하여 같은 은행 또는 다른 은행의 계좌에 입금하는 것을 말합니다.
12. "예약에 의한 계좌이체"라 함은 계좌이체가 장래의 특정일자에 이루어지도록 이용자가 미리 거래지시하고 은행이 이를 해당일자에 처리하는 것을 말합니다.
13. "추심이체"라 함은 수취인의 전자적 장치를 통한 추심지시에 따라 은행이 지급인의 출금계좌에서 자금을 출금하여 같은 은행 또는 다른 은행의 계좌에 입금하는 것을 말합니다.
14. "예약에 의한 추심이체"라 함은 추심이체가 장래의 특정일자에 이루어지도록 이용자가 미리 거래지시하고 은행이 이를 해당일자에 처리하는 것을 말합니다.
15. "지연이체"라 함은 이용자가 계좌이체 거래지시를 한 시점으로부터 일정시간이 경과한 후에 은행이 이를 처리하는 것을 말합니다.
16. "영업일"이라 함은 통상 은행이 영업점에서 정상적인 영업을 하는 날을 말합니다.
17. "단말기지정 및 이용"이라 함은 이용자가 전자금융거래 시 계좌이체가 가능한 전자적 장치(이하 "단말기"라 합니다.)의 IP주소, MAC주소 등 기기정보를 은행에 등록하고 이용하는 것을 말합니다.
18. "추가적인 보안조치"라 함은 이용자가 지정하지 않은 단말기를 이용하여 전자금융거래를 하는 경우 제6호의 접근매체 외의 서로 다른 두가지 이상의 경로 또는 수단을 이용하여(휴대폰 문자, ARS, 은행 서버를 통한 휴대폰 본인확인 등) 본인임을 확인하는 방법을 말합니다.
② 이 약관에서 별도로 정하지 아니한 용어는 「전자금융거래법」 및 관계 법령 등에서 정하는 바에 따릅니다.

제3조(적용되는 거래)
이 약관은 은행과 이용자 사이에 다음 각호의 전자적 장치를 이용하여 이루어지는 계좌이체(예약에 의한 계좌이체 및 지연이체를 포함합니다. 이하 같습니다.), 추심이체(예약에 의한 추심이체를 포함합니다. 이하 같습니다.), 계좌송금과 관련한 조회, 입금·출금 등의 전자금융거래에 적용됩니다.

1. 현금자동지급기, 자동입·출금기, 지급용단말기에 의한 거래
2. 컴퓨터에 의한 거래
3. 전화기에 의한 거래
4. 기타 전자적 장치에 의한 거래
제4조(전자금융거래계약의 체결 및 해지)
① 이용자가 전자금융거래를 하고자 하는 경우에는 사전에 은행과 별도의 전자금융거래계약을 체결하여야 합니다. 다만, 다음 각호의 1에 해당하는 경우에는 그러지 아니합니다.

1. 예금잔액, 예금 입출금내역 등 단순조회
2. 현금자동지급기, 자동입출금기, 지급용단말기에 의한 거래
3. 기타 은행이 정하는 거래
② 전자금융거래 계약을 해지하고자 하는 경우에는 이용자 본인이 전자금융거래에 관한 개별약관에 정한 바에 따라 서면 또는 해당 전자적 장치에 의하여 은행에 해지신청을 하여야 합니다.

제5조(접근매체의 발급 및 등록)
① 은행이 접근매체를 발급할 때에는 이용자의 신청이 있는 경우에 한하여 본인임을 확인한 후에 발급합니다.

② 제1항의 규정에도 불구하고 은행은 접근매체의 갱신 또는 대체발급 등을 위하여 이용자의 동의를 얻은 경우로서 다음 각호에 해당하는 경우에는 이용자의 신청이나 본인확인 없는 때에도 발급할 수 있습니다.

1. 갱신 또는 대체발급 예정일전 6개월 이내에 사용된 적이 없는 접근매체에 대하여 이용자로부터 갱신 또는 대체발급에 대한 서면(「전자서명법」 제2조 제2호의 규정에 따른 전자서명(서명자의 실지명의를 확인할 수 있는 것을 말합니다. 이하 "전자서명"이라 합니다.) 또는 은행이 정한 기타 전자서명이 있는 전자문서를 포함합니다.) 동의를 얻은 경우
2. 갱신 또는 대체발급 예정일전 6개월 이내에 사용된 적이 있는 접근매체의 경우에는 그 예정일부터 1개월 이전에 이용자에게 발급 예정사실을 알린 후 20일 이내에 이용자로부터 이의제기가 없는 경우
③ 이용자는 전자금융거래계약을 체결하고 거래비밀번호 등을 전자적 장치를 통하여 직접 등록할 경우에는 계약일 포함 3영업일 이내에 등록하여야 합니다.

제6조(접근매체의 관리)
이용자는 전자금융거래에 필요한 접근매체에 대하여 다른 법률에 특별한 규정이 없는 한 다음 각 호의 행위를 하여서는 안되며, 접근매체의 도용, 위조, 변조를 방지하기 위한 관리에 충분한 주의를 기울여야 합니다.

1. 접근매체를 제3자에게 대여하거나 사용을 위임하는 행위
2. 접근매체를 제3자에게 양도 또는 담보를 목적으로 제공하는 행위
3. 제3자가 권한 없이 이용자의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 접근매체를 누설, 노출, 방치하는 행위
제7조(은행이 정한 인증방법의 사용)
이용자는 이 약관의 적용대상인 전자금융거래를 이용하는 경우 반드시 은행이 전자금융거래의 종류, 성격, 위험수준 등을 고려하여 정한 인증방법을 사용하여야 합니다.

제8조(이용시간)
① 이용자는 은행이 정한 시간 이내에서 전자금융거래를 이용할 수 있습니다.

② 이용시간은 은행의 사정에 따라 달라질 수 있으며, 은행이 이용시간을 변경하고자 하는 경우에는 그 내용을 이용자가 접근하기 용이한 전자적 장치 및 영업점을 통하여 변경 1개월 전부터 1개월간 알립니다. 다만, 시스템 장애복구, 긴급한 프로그램 보수, 외부요인 등 불가피한 경우에는 예외로 합니다.

제9조(수수료)
① 은행은 전자금융 수수료를 이용자의 계좌에서 출금하거나 이용자로부터 직접 현금으로 받을 수 있으며, 수납방법은 개별약관에 따릅니다.

② 은행은 수수료(율)를 고객이 확인할 수 있도록 영업점 및 이용자가 접근하기 용이한 전자적 장치를 통하여 게시하고, 수수료(율)를 변경하는 경우에는 제29조를 준용합니다.

제10조(이체 한도)
이용자는 은행이 정한 지정방법에 따라 계좌이체, 추심이체, 계좌송금에 대한 이체 최고한도를 설정하여야 합니다.

제11조(거래의 성립)
이용자가 전자금융거래를 하고자 하는 경우에는 다음 각 호의 시기에 거래가 성립합니다.

1. 계좌이체 및 추심이체의 경우에는 이용자가 입력한 거래지시의 내용을 은행이 확인하고 출금자금(수수료를 포함합니다. 이하 같습니다.)을 출금계좌원장에 출금기록 한 때
2. 현금출금의 경우에는 이용자가 입력한 거래지시의 내용을 은행이 확인하고 출금자금을 출금계좌원장에 출금기록 한 때
3. 계좌송금의 경우에는 은행이 이용자가 입력한 거래지시의 내용 및 입금자금을 확인한 때
4. 예약에 의한 계좌이체, 예약에 의한 추심이체, 지연이체의 경우는 은행이 이용자의 거래지시 내용을 확인한 때. 다만, 이체시점에 자금이 출금계좌에 입금되어 있을 것을 조건으로 합니다.
제12조(거래지시의 처리기준)
① 은행은 이용자의 거래지시에 포함된 계좌번호, 비밀번호, 이용자번호 등의 접근매체 정보 또는 단말기 정보를 신고된 것과 대조하여 그 일치 여부를 확인한 후에 거래지시를 처리합니다.

② 이용자의 거래지시와 관련하여 은행이 수신한 전자문서는 각 문서마다 독립된 것으로 봅니다.

③ 제2항의 규정에도 불구하고 거래지시 전자문서가 은행이 정한 시간 내에 동일한 내용으로 반복 수신된 경우 은행은 전화, 기타 이용자에게 즉시 통지할 수 있는 전자적 장치 등을 통하여 이용자의 진정한 거래지시 의사를 확인하는 절차를 거친 후 나머지 전자문서를 폐기할 수 있습니다.

④ 은행은 이용자의 거래지시에 따라 출금계좌에서 자금을 인출할 때 예금거래기본약관에 불구하고 통장이나 지급청구서 또는 수표 없이 인출합니다.

⑤ 대량계좌이체, 다른 은행으로의 이체 등과 같이 거래의 특성상 수취인의 명의를 확인할 수 없는 경우에는 수취인의 계좌번호를 기준으로 하여 거래 지시를 처리합니다.

⑥ 다른 은행으로의 이체는 당일 중에 처리합니다. 다만, 당일 중 처리가 불가능한 경우에는 제19조 제4항에서 정한 바에 따라 처리합니다.

⑦ 예약에 의한 계좌이체, 예약에 의한 추심이체, 지연이체의 경우 이체시점에 출금계좌의 자금이 이용자가 거래지시한 금액 이상일 때 처리합니다.

⑧ 제7항의 경우 이체지정일이 은행 휴무일로 정해질 때에는 다음 영업일에 거래지시를 처리합니다.

제13조(추심이체의 출금 동의)
① 은행은 추심이체를 실행하기 위하여 다음 각호에서 정하는 방식에 따라 미리 지급인으로부터 출금에 대한 동의를 얻어야 합니다.

1. 은행이 지급인으로부터 서면(전자서명 또는 은행이 정한 기타 전자서명이 있는 전자문서를 포함합니다. 이하 이 조에서 같습니다.)에 의하여 출금신청을 받는 방법
2. 수취인이 지급인으로부터 서면에 의한 출금의 동의를 받아 은행에게 전달(전자적인 방법에 의하여 출금동의의 내역을 전송하는 경우를 포함합니다.)하는 방법
② 지급인은 수취인의 거래지시에 따라 지급인의 계좌의 원장에 출금기록이 끝나기 전까지 은행에 출금동의의 철회를 요청할 수 있습니다.

③ 제2항의 규정에도 불구하고 대량으로 처리하는 거래 또는 예약에 의한 추심이체거래의 경우에는 지급인은 출금일 전영업일까지 은행 영업점에 서면으로 출금 동의의 철회를 요청할 수 있습니다.

제14조(거래의 제한)
① 다음 각호의 1에 해당하는 경우에는 전자금융거래의 해당 지시에 따른 거래를 제한할 수 있습니다.

1. 전자금융거래의 처리시점에 출금계좌의 자금이 출금자금에 미달하는 때. 다만, 전자금융거래에 관한 개별약관에 따로 정한 경우에는 그에 따릅니다.
2. 입금 또는 출금계좌가 해지되었거나 거래중지계좌에 편입되었을 때
3. 이체일에 입금 또는 출금계좌의 잔액증명서가 발급되었을 때
4. 이용자가 설정한 이체한도를 초과하여 계좌이체 거래지시를 할 때
5. 입금계좌를 지정하여 계좌이체를 이용하기로 한 이용자가 지정하지 않은 계좌로 계좌이체 거래지시를 할 때
6. 이용자가 접근매체에 의한 본인확인 외에 은행이 제공하는 추가적인 보안조치를 이용하지 아니할 때. 다만 다음 각 목의 경우는 그러하지 아니합니다.
가. 고객의 불가피한 사유로 추가적인 보안조치가 불가하여 은행과 별도의 약정을 체결한 경우
나. 법무부 출국조회 정보시스템에 의하여 해외 출국사실이 확인된 경우
다. 점자형 보안카드를 이용하는 경우
라. 일회용 비밀번호 생성기(OTP)를 이용하여 계좌이체 거래지시를 하는 경우
7. 압류, 가압류, 가처분 등 법적 지급제한, 「전자금융거래법」 및 관련법령 위반 등으로 거래제공이 부적합하다고 은행이 인정했을 때
② 다음 각호의 1에 해당하는 경우에는 해당 전자적 장치를 통한 계좌이체의 전부를 제한할 수 있습니다.

1. 은행이 정한 인증서 유효기간이 만료되었거나, 은행이 정한 인증서가 취소되었을 때
2. 컴퓨터 또는 전화기로 전자금융거래를 이용하는 이용자가 12개월 이상 이용실적이 없을 때
③ 은행이 제1항 및 제2항에 의해 전자금융거래를 제한한 경우에는 이용자의 거래지시가 있을 때 해당 전자적 장치를 통하여 그 사유를 알려야 합니다.

④ 제2항의 경우에 이용자는 은행이 정한 인증서 재발급·유효기간의 연장 또는 계속 사용의사 확인 등의 절차를 거쳐 전자금융거래를 이용할 수 있습니다.

⑤ 1회 100만원 이상의 금액이 송금·이체되어 입금된 경우 입금된 때로부터 해당금액 상당액 범위 내에서 30분간 자동화기기를 통한 인출·이체가 지연될 수 있습니다. 다만, 타점권으로 입금된 경우에는 이에 해당되지 않습니다.

제15조(지급의 효력발생시기)
① 계좌이체, 추심이체 및 계좌송금의 경우에는 수취인의 계좌원장에 입금기록을 마친 때에 지급의 효력이 생깁니다.

② 현금출금의 경우에는 이용자가 현금을 수령한 때에 지급의 효력이 생깁니다.

③ 선불전자지급수단 및 전자화폐로 지급하는 경우에는 거래지시된 금액의 정보가 수취인이 지정한 전자적 장치에 도달한 때에 지급의 효력이 생깁니다.

④ 그 밖의 전자지급수단으로 지급하는 경우에는 거래지시된 금액의 정보가 수취인의 계좌가 개설되어 있는 은행등의 전자적 장치에 입력이 끝난 때에 지급의 효력이 생깁니다.

제16조(거래지시의 철회)
① 이용자는 제15조에 의하여 거래가 완료되기 전까지 전자금융거래시 이용한 해당 전자적 장치를 통하거나 또는 은행이 정하는 절차에 따라 거래지시를 철회 할 수 있습니다.

② 대량으로 처리하는 거래 또는 예약에 의한 계좌이체 및 추심이체는 이체일 전영업일까지 전자금융거래시 이용한 해당 전자적 장치를 통하여 거래지시를 철회 할 수 있습니다.

③ 지연이체는 이체지연시간 종료 30분전까지 전자금융거래시 이용한 해당 전자적 장치를 통하거나 은행이 정한 절차에 따라 거래지시를 철회할 수 있습니다.

④ 실시간 이체되는 거래 등 전자금융거래의 성질상 은행이 거래의 완료여부를 즉시 확인할 수 없는 경우에는 제1항의 규정에도 불구하고 이용자의 거래지시 철회를 제한할 수 있습니다.

⑤ 이용자의 요청에 따라 출금계좌를 해지할 때에는 해당 계좌에 등록된 지연이체 및 예약에 의한 계좌이체 거래지시도 철회됩니다.

⑥ 이용자의 사망·피성년후견선고·피한정후견선고·피특정후견선고(한정치산선고·금치산선고 포함)나 이용자 또는 은행의 해산·합병·파산은 그 자체로는 거래지시를 철회 또는 변경하는 것으로 되지 아니하며 은행의 권한에도 영향을 미치지 아니합니다.

제17조(거래내용의 확인)
① 은행은 제15조의 거래의 처리결과를 이용자가 전자금융거래에 이용한 해당 전자적 장치 또는 컴퓨터 등 대체 전자적 장치를 통하여 즉시 확인할 수 있도록 하여야 합니다. 다만, 다른 은행으로의 이체, 예약에 의한 계좌이체, 지연이체의 경우에는 접수결과를 해당 전자적 장치를 통하여 이용자에게 즉시 알립니다.

② 제1항의 규정에도 불구하고 이용자가 요청하는 거래내용을 해당 전자적 장치 및 대체 전자적 장치로도 즉시 확인을 해 주는 것이 곤란할 경우 은행은 해당 거래내용을 서면(전자문서를 제외합니다.) 형태로 출력하여 이용자에게 교부하여야 합니다.

③ 이용자는 거래지시와 제1항에 의한 처리결과가 일치하는지 여부를 확인하여야 합니다.

제18조(오류의 정정)
① 이용자는 전자금융거래에 오류가 있음을 안 때에는 즉시 은행에 정정을 요구할 수 있으며 이 경우 은행은 즉시 조사하여 이체자금의 이동경로를 확인하거나 출금을 제한하는 등 필요한 조치를 취한 후 정정요구를 받은 날부터 2주일 이내에 그 원인과 처리결과를 이용자에게 알려야 합니다.

② 은행은 스스로 전자금융거래에 오류가 있음을 안 때에는 이를 즉시 조사하여 처리한 후 오류가 있음을 안 날부터 2주일 이내에 그 원인과 처리결과를 이용자에게 알려야 합니다.

제19조(사고·장애시의 처리)
① 이용자는 거래계좌에 관한 접근매체의 도난, 분실, 위조 또는 변조의 사실을 알았거나 기타 거래절차상 비밀을 요하는 사항이 누설되었음을 알았을 때에는 지체없이 이를 은행에 신고하여야 합니다.

② 제1항의 신고는 은행이 이를 접수한 즉시 그 효력이 생깁니다.

③ 제1항의 신고를 철회할 경우에는 이용자 본인이 은행에 서면으로 신청하여야 합니다.

④ 은행은 통신장애 및 기타의 사유로 인하여 거래지시된 전자금융거래가 처리 불가능한 경우에는 출금계좌로 입금처리하고 이용자가 신고한 최종 연락처로 이를 통지하여야 합니다.

⑤ 은행은 이용자의 요청이 있을 때에는 사고 또는 장애의 사유를 지체 없이 조사하여 그 결과를 이용자에게 통지하여야 합니다.

제20조(손해배상 및 면책)
① 은행은 이용자로부터 접근매체의 분실이나 도난의 통지를 받은 후에 제3자가 그 접근매체를 사용하여 이용자에게 손해가 발생한 경우 그 손해를 배상합니다.

② 은행은 다음 각 호의 사고로 인하여 이용자에게 손해가 발생한 경우 그 손해를 배상합니다.

1. 접근매체의 위조나 변조로 발생한 사고
2. 계약체결 또는 거래지시의 전자적 전송이나 처리과정에서 발생한 사고
3. 전자금융거래를 위한 전자적 장치 또는「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조 제1항 제1호에 따른 은행의 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고
③ 제1항 및 제2항에 의하여 금전적 손해가 발생한 경우 해당 금액 및 이에 대한 1년 만기 정기예금 이율로 계산한 경과이자를 배상합니다. 다만, 손해액이 해당 금액과 1년 만기 정기예금 이율로 계산한 금액을 초과하는 경우에는 실손해액을 배상합니다.

④ 제2항의 규정에도 불구하고 은행은 이용자가 고의·중과실로 다음 각 호의 행위를 하였음을 증명하는 경우 이용자에게 손해가 생기더라도 책임의 전부 또는 일부를 지지 아니합니다.

1. 이용자가 접근매체를 제3자에게 대여하거나 사용을 위임한 경우 또는 양도나 담보의 목적으로 제공한 경우(「전자금융거래법」제18조에 따라 선불전자지급수단이나 전자화폐를 양도하거나 담보로 제공한 경우를 제외합니다.)
2. 제3자가 권한 없이 이용자의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 이용자가 자신의 접근매체를 누설 또는 노출하거나 방치한 경우
3. 은행이 접근매체를 통하여 이용자의 신원, 권한 및 거래지시의 내용 등을 확인하는 것 외에 보안강화를 위하여 전자금융거래시 사전에 요구하는 추가적인 보안조치를 이용자가 정당한 사유 없이 거부하여 사고가 발생한 경우
4. 이용자가 제3호에 따른 추가적인 보안조치에 사용되는 매체·수단 또는 정보에 대하여 다음 각 목의 어느 하나에 해당하는 행위를 하여 사고가 발생한 경우
가. 누설·노출 또는 방치한 행위
나. 제3자에게 대여하거나 그 사용을 위임한 행위 또는 양도나 담보의 목적으로 제공한 행위
5. 법인(「중소기업기본법」제2조 제2항에 의한 소기업을 제외합니다.)인 이용자에게 손해가 발생한 경우로 은행이 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우
⑤ 이 약관의 내용 중 전자금융거래법 등 관계법규에 위반되는 사항은 효력이 없습니다.

제21조(거래기록의 보존)
① 은행은 전자금융거래와 관련한 다음 각호의 거래기록(조회거래는 제외합니다.)을 5년간 유지, 보존하여야 합니다.

1. 거래계좌의 명칭 또는 번호
2. 거래의 종류 및 금액, 거래상대방을 나타내는 정보
3. 거래일시, 전자적 장치의 종류 및 전자적 장치를 식별할 수 있는 정보
4. 은행이 수취한 전자금융 관련 수수료
5. 추심이체의 경우 지급인의 출금동의 내역
6. 전자금융거래 신청, 조건변경에 관한 내용
7. 해당 전자금융거래와 관련한 전자적 장치의 접속기록
② 은행은 전자금융거래와 관련한 다음 각호의 거래기록을 1년간 유지, 보존하여야 합니다.

1. 건당 거래금액이 1만원 이하인 소액거래에 관한 기록
2. 거래승인에 관한 기록
3. 오류정정 요구 및 처리기록
제22조(거래기록·자료의 제공)
① 은행은 이용자의 요청이 있을 경우 「금융실명거래 및 비밀보장에 관한 법률」 등 다른 법률에 저촉되지 않는 범위 내에서 은행이 보존·관리하고 있는 전자금융거래관련 기록·자료를 이용자에게 제공하여야 합니다.

② 이용자가 제공 요청을 할 수 있는 거래기록·자료의 범위와 대상기간은 제21조 제1항 및 제2항에서 정한 기록 및 기간으로 합니다.

③ 이용자가 서면(전자문서를 제외합니다. 이하 같습니다.) 형태의 거래기록·자료(이하 "거래명세서"라 합니다.)를 제공할 것을 은행에 요청하는 경우에는 본인이 서면으로 영업점에 신청하여야 하며, 은행은 신청 가능 영업점의 주소 및 전화번호 등을 인터넷 등을 통하여 이용자가 알 수 있도록 게시하여야 합니다.

④ 은행은 이용자로부터 제3항에 따른 거래명세서의 제공요청을 받은 경우 2주일 이내에 이용자에게 거래명세서를 교부하여야 합니다.

⑤ 은행은 불가피한 사유로 인하여 거래기록·자료(거래명세서를 포함합니다.)의 제공이 불가능한 경우에는 그 사유를 이용자에게 즉시 통보하여야 하며, 해당 사유가 소멸한 경우 다음 각호에서 정한 기한내에 이용자에게 확인 및 제공하여야 합니다.

1. 전자적 장치를 통한 제공의 경우에는 즉시
2. 제3항에 따른 서면 제공 방식의 경우에는 2주일 이내에 거래명세서를 교부
제23조(통지방법 및 효력)
① 은행은 제18조 제2항, 제19조 제4항 및 제5항 등 전자금융거래에서 발생하는 사항을 통지하는 경우에는 이용자가 신고한 최종 연락처로 전화, 서면 또는 기타 전자적 장치로 통지하여야 하며, 이용자가 서면을 요청하는 경우에는 서면으로 알려야 합니다.

② 은행의 의사표시는 그 통지가 도달되어야 효력이 생깁니다. 다만, 거래의 처리 결과 등 일반적인 사항을 서면으로 통지했을 때에는 보통의 우송기간이 지났을 때 도달된 것으로 추정하며, 이용자가 제24조에 의한 변경신고를 하지 않은 때에는 도달된 것으로 봅니다.

제24조(신고사항의 변경 등)
① 이용자가 계좌번호, 비밀번호, 이용자번호, 상호, 주소, 전화번호 등 은행에 신고한 사항을 변경하고자 하는 경우에는 전자금융거래에 관한 개별약관에 정한 바에 따라 신고하여야 합니다.

② 신고사항의 변경은 은행이 제1항의 신고를 접수하고 전산입력에 요구되는 합리적인 시간이 지난 후에 그 효력이 생깁니다.

③ 이용자는 제1항에서 정한 신고사항 외의 각종 통지를 은행의 전자금융보조업자에게도 할 수 있습니다. 이 경우 전자금융보조업자에게 한 통지는 은행에게 한 것으로 봅니다.

제25조(준수사항)
전자금융거래의 안전한 수행을 위하여 이용자는 은행이 정하는 바에 따라 다음 각 호의 사항을 준수하여야 합니다.

1. 비밀번호 유출 및 해킹 등 전자적 침해를 방지하기 위하여 필요한 조치 및 관리 방법
2. 이용자 보호를 위하여 은행이 제공하는 절차와 방법
3. 기타 은행이 정하는 사항
제26조(거래내용 녹음)
은행은 거래의 정확성을 기하기 위해 직원과의 전화통화에 의한 거래내용을 녹음할 수 있습니다. 다만, 녹음된 내용은 해당거래에 관한 분쟁이 발생할 경우의 증거자료로만 사용할 수 있으며, 이 경우 이용자는 은행에 녹음된 내용의 청취를 요구할 수 있습니다.

제27조(비밀보장의무)
① 은행은 법령에 정한 경우를 제외하고는 전자금융거래업무를 수행함에 있어서 알게 된 이용자의 인적사항 및 계좌, 접근매체 및 전자금융거래의 내용과 실적에 관한 정보 또는 자료를 이용자의 동의 없이는 다른 사람에게 제공하거나 누설하거나 업무 목적외 사용을 하여서는 안됩니다.

② 은행의 관리소홀로 인한 이용자 관련 정보 도난 및 유출시에는 은행이 책임을 집니다.

제28조(약관의 명시·교부·설명)
① 은행은 이용자에게 약관을 명시하여야 하고, 이용자의 요청이 있는 경우 전자문서의 전송(전자우편을 이용한 전송을 포함합니다.), 모사전송, 우편 또는 직접 교부의 방식으로 약관의 사본을 이용자에게 교부하여야 합니다.

② 은행은 이용자가 약관의 내용에 대한 설명을 요청하는 경우 다음 각 호의 어느 하나의 방법으로 이용자에게 약관의 중요내용을 설명하여야 합니다.

1. 약관의 중요내용을 이용자에게 직접 설명
2. 약관의 중요내용에 대한 설명을 전자적 장치를 통하여 이용자가 알기 쉽게 표시하고 이용자로부터 해당 내용을 충분히 인지하였다는 의사표시를 전자적 장치를 통하여 수령
제29조(약관의 변경)
① 은행이 이 약관을 변경하고자 하는 경우에는 변경 1개월 전에 그 내용을 해당 전자금융거래를 수행하는 전자적 장치(해당 전자적 장치에 게시하기 어려울 경우에는 이용자가 접근하기 용이한 전자적 장치) 및 영업점에 게시하고 이용자에게 통지하여야 합니다. 다만, 이용자가 이의를 제기할 경우 은행은 이용자에게 적절한 방법으로 약관 변경내용을 통지하였음을 확인해 주어야 합니다.

② 제1항에도 불구하고 법령의 개정으로 인하여 긴급하게 약관을 변경한 때에는 변경된 약관을 전자적 장치에 최소 1개월 이상 게시하고 이용자에게 통지하여야 합니다.

③ 은행이 제1항 및 제2항의 게시하거나 통지를 하는 경우에는 “이용자가 약관의 변경내용이 게시되거나 통지된 후부터 변경되는 약관의 시행일 전의 영업일까지 이내에 계약을 해지할 수 있으며, 약관의 변경내용에 이의를 제기하지 아니하는 경우 약관의 변경내용에 승인한 것으로 본다.”라는 취지의 내용을 통지하여야 합니다.

④ 이용자는 약관의 변경내용이 게시되거나 통지된 후부터 변경되는 약관의 시행일 전의 영업일까지 전자금융거래의 계약을 해지할 수 있고, 약관의 변경내용에 대하여 이의를 제기하지 아니하는 경우에는 약관의 변경을 승인한 것으로 봅니다.

제30조(약관적용의 우선순위)
① 은행과 이용자 사이에 개별적으로 합의한 사항이 이 약관에 정한 사항과 다를 때에는 그 합의사항을 이 약관에 우선하여 적용합니다.

② 전자금융거래에 관하여 이 약관에 정하지 않은 사항은 개별약관이 정하는 바에 따릅니다.

③ 이 약관과 전자금융거래에 관한 개별약관에 정하지 않은 사항에 대하여는 다른 약정이 없으면 「전자금융거래법」등 관계법령, 예금거래기본약관 및 은행여신거래기본약관(가계용/기업용)을 적용합니다.

제31조(이의제기 및 협조)
① 이용자는 전자금융거래의 처리에 관하여 이의가 있을 때에는 은행의 분쟁처리기구에 그 해결을 요구하거나 금융감독원 금융분쟁조정위원회, 한국소비자보호원 소비자분쟁조정위원회 등을 통하여 분쟁조정을 신청할 수 있습니다.

② 이용자가 은행의 본점이나 영업점 또는 은행의 분쟁처리기구에 이의를 제기한 경우 은행은 15일 이내에 이에 대한 조사 또는 처리결과를 이용자에게 알려야 합니다.

③ 은행은 손해배상 등 분쟁처리를 위한 분쟁처리책임자 및 담당자를 지정하고, 그 연락처를 관련 인터넷 홈페이지에 게시하여야 합니다.

④ 이용자는 제20조 제2항에 정한 사고발생으로 인한 손해배상 등 분쟁처리와 관련한 은행의 사고조사 및 관계당국의 수사 또는 조사절차에 협조하여야 합니다.

제32조(착오송금에 대한 협조의무)
이용자가 송금금액, 수취은행, 수취인 계좌번호 등을 잘못 입력하여 송금(이하 ‘착오송금’이라 합니다.)하였음을 은행에게 통지하는 경우 은행은 다음과 같은 조치를 하여야 합니다.

1. 송금은행과 수취은행이 동일한 경우 즉시 수취인에게 착오송금 사실, 반환의무 등을 알리고, 수취인에 대한 연락 사실, 수취인의 반환의사 유무, 수취인이 반환의사가 없는 경우 그 사유 등을 송금인에게 알려야 합니다.
2. 송금은행과 수취은행이 다른 경우 수취은행에게 즉시 착오송금임을 알리고, 수취은행으로부터 전달받은 사항(수취인에 대한 연락 사실, 수취인의 반환 의사 유무, 수취인이 반환의사가 없는 경우 그 사유 등)을 송금인에게 알려야 합니다.
제33조(준거법)
이 약관의 해석·적용에 관하여는 대한민국법을 적용합니다.

부 칙(2008. 3. 4)
제1조(시행일) 이 약관은 2008년 3월 4일부터 시행합니다.

부 칙(2013. 9. 26)
제1조(시행일) 이 약관은 2013년 9월 26일부터 시행합니다.

부 칙(2014. 1. 20)
제1조(시행일) 이 약관은 2014년 1월 20일부터 시행합니다.

부 칙(2015. 6. 1)
제1조(시행일) 이 약관은 2015년 6월 1일부터 시행합니다.

부 칙(2015. 7. 3)
제1조(시행일) 이 약관은 2015년 7월 3일부터 시행합니다.

부 칙(2015. 9. 2)
제1조(시행일) 이 약관은 2015년 9월 2일부터 시행합니다.

부 칙(2015. 10. 16)
제1조(시행일) 이 약관은 2015년 10월 16일부터 시행합니다.

부 칙(2016. 7. 18)
제1조(시행일) 이 약관은 2016년 7월 18일부터 시행합니다.

부 칙(2017. 5. 2)
제1조(시행일) 이 약관은 2017년 5월 2일부터 시행합니다.

부 칙(2018. 7. 26)
제1조(시행일) 이 약관은 2018년 7월 26일부터 시행합니다.

부 칙(2020. 12. 10)
제1조(시행일) 이 약관은 2020년 12월 10일부터 시행합니다.

부 칙(2021. 4. 19)
제1조(시행일) 이 약관은 2021년 4월 19일부터 시행합니다.
       </textarea>
			</li>
			<li class="checkBox check03">
				<ul class="clearfix">
					<li>[필수]모바일뱅킹 서비스 설명서</li>
					<li class="checkBtn"><input type="checkbox" name="chk">
					</li>
				</ul> <textarea name="" id="">
                    그냥 동의하슈
       </textarea>
			</li>
			<li class="checkBox check03">
				<ul class="clearfix">
					<li>[필수] 개인정보 제3자 제공 동의서</li>
					<li class="checkBtn"><input type="checkbox" name="chk">
					</li>
				</ul> <textarea name="" id="">
				동의해주세요
       </textarea>
			</li>
			<li class="checkBox check04">
				<ul class="clearfix">
					<li>[선택]이벤트 등 프로모션 알림 문자 수신</li>
					<li class="checkBtn"><input type="checkbox" name="chk2">
					</li>
				</ul>

			</li>
		</ul>
		<ul class="footBtwrap clearfix">
			<li><button class="fpmgBt1" type="button" onclick="link('open')">비동의</button></li>
			<li><button class="fpmgBt2" type="submit" onclick="agreecheck()">동의</button></li>
		</ul>
	</form>

</body>
</html>