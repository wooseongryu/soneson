<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<script>
	//시작일 선택날짜 제한
	let now = new Date();
	now.setDate(now.getDate() + 1);
	console.log(now);
	let tommorrow = String(now.toISOString().slice(0,10));
	
	//수수료계산
	
	$(function() {
		let goal = "${pro.pro_goal}".replaceAll(",", "");
// 		console.log("goal: "+ goal + "타입: " + typeof goal);
		let creditFee = Math.floor(Number(goal) * 0.033);
		let sonFee = Math.floor(Number(goal) * 0.055);
		let total = sonFee + creditFee;
		let totalAmount = goal - (sonFee + creditFee);
// 		console.log("creditFee: " + creditFee + " 타입: " + typeof creditFee);
		console.log(String(creditFee).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		$("#creditFee").text(String(creditFee).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		$("#sonFee").text(String(sonFee).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		$("#totalFee").text(String(total).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		$("#totalAmount").text(String(totalAmount).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		
		//수수료 계산하기
		$('#pro_goal').on('keydown keyup', function(){
// 		$("#pro_goal").keydown(function() {
// 			debugger;
// 			let goal = "";
			goal = $(this).val().replace(/^0+|[^0-9]/g, ''); //숫자만 입력
			$(this).val(goal.replace(/\B(?=(\d{3})+(?!\d))/g, ','));
// 			goal = $(this).val().replaceAll(/[^-0-9]/g,''); //숫자만 입력
			console.log("goal: "+ goal + "타입: " + typeof goal);
// 			$(this).val(goal.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,'));
			
// 			let creditFee = Math.floor(Number(goal) * 0.033);
// 			let sonFee = Math.floor(Number(goal) * 0.055);
// 			let total = sonFee + creditFee;
// 			let totalAmount = goal - (sonFee + creditFee);
			creditFee = Math.floor(Number(goal) * 0.033);
			sonFee = Math.floor(Number(goal) * 0.055);
			total = sonFee + creditFee;
			totalAmount = goal - (sonFee + creditFee);
			
			$("#creditFee").text(String(creditFee).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			$("#sonFee").text(String(sonFee).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			$("#totalFee").text(String(total).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			$("#totalAmount").text(String(totalAmount).replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			
			
			let amountAlert = "";
			if(Number(goal) < 500000) {
				$(".input-fundingCost").css("border", "1px solid rgb(248, 100, 83)");
				amountAlert = "50만원 이상의 금액을 입력해 주세요.";
			} else if(goal.length > 8) {
				$(".input-fundingCost").css("border", "1px solid rgb(248, 100, 83)");
				amountAlert = "99,999,999원 이하인 금액을 입력해주세요..";
			} else {
				$(".input-fundingCost").css("border", "1px solid rgb(240, 240, 240)");
				amountAlert = "";
			}
			
			$(".amount-alert").text(amountAlert);
			
			
		});
		
		//날짜 선택하기
		$("#start-funding").val("${pro.pro_startDt}");
		$("#end-funding").val("${pro.pro_endDt}");
		$("#start-funding").attr("min", tommorrow);
		let startDt = new Date("${pro.pro_startDt}");
		let endDt = new Date("${pro.pro_endDt}");
		console.log(tommorrow);
		if($("#start-funding").val("${pro.pro_startDt}") < tommorrow) {
			alert("시작일을 다시 선택해주세요.");
			$("#start-funding").css('border','1px solid rgb(248, 100, 83)');
		}
		
		
		if(${not empty pro.pro_startDt} && ${not empty pro.pro_endDt}) {
			let fundingDays = Math.round((endDt - startDt) / 1000 / 60 / 60 / 24);
			let paymentDt = endDt.getFullYear() + "-" + endDt.getMonth() + "-" + (endDt.getDate() + 7);
			let calculateDt = endDt.getFullYear() + "-" + endDt.getMonth() + "-" + (endDt.getDate() + 14);
			$("#fundingDays").text(fundingDays);
			$("#paymentDt").text(paymentDt);
			$("#calculateDt").text(calculateDt);
			
		};
		
		//시작날짜 변경 시
		$("#start-funding").on('change', function() {
			startDt = new Date($(this).val()); //String
			endDt = new Date($("#end-funding").val());
			if(startDt > endDt) {
				alert("마감일 이전으로 선택해 주세요.");
				$(this).val("");
				return;
			}
			$("#start-funding").css('border','1px solid #d1d3e2');
			console.log(startDt + ", " + typeof startDt);
			
			if(startDt != "" && endDt != "") {
// 			if((startDt != "" || startDt != null) && (endDt != "" || endDt != null)) {
				fundingDays = Math.round((endDt - startDt) / 1000 / 60 / 60 / 24);
				console.log(fundingDays + ", " + typeof fundingDays);
				$("#fundingDays").text(fundingDays);
				return;
			}
		});
		
		//마감날짜 변경 시 
		$("#end-funding").on('click change', function() {
			let startDt = $("#start-funding").val();
			if(startDt == "" || startDt == null ) {
				alert("시작일을 먼저 설정해 주세요.");
				return;	
			}
			$("#end-funding").attr("min", $("#start-funding").val());
			endDt = new Date($(this).val());
			startDt = new Date($("#start-funding").val());
			fundingDays = Math.round((endDt - startDt) / 1000 / 60 / 60 / 24);
			paymentDt = endDt.getFullYear() + "-" + endDt.getMonth() + "-" + (endDt.getDate() + 7);
			calculateDt = endDt.getFullYear() + "-" + endDt.getMonth() + "-" + (endDt.getDate() + 14);
// 			console.log("결제마감일" + paymentDt);
			if(endDt != "" || endDt != null) {
				$("#fundingDays").text(fundingDays);
				$("#paymentDt").text(paymentDt);
				$("#calculateDt").text(calculateDt);
				return;
			}
			
		});
		
// 		$("#end-funding").click(function() {
// 			let startDt = $("#start-funding").val();
// 			console.log($("#start-funding").val());
// 			if(startDt == "" || startDt == null ) {
// 				alert("시작일을 먼저 설정해 주세요.");
// 				return;	
// 			}
// 			$("#end-funding").attr("min", $("#start-funding").val());
			
// 		});
		
// 		$("#end-funding").change(function() {
// 			let startDt = $("#start-funding").val();
// 		});

		//날짜 계산하기
		
		
// 		$("#start-funding, #end-funding").change(function() {
// 			let startDt = $("#start-funding").val();
// 			let endDt = $("#end-funding").val();
// 		});
		
		
		
		
// 		$("#pro_goal").keyup(function() {
// 			let goal = $(this).val();
// 			let creditFee = Math.floor(goal * 0.033);
// 			let sonFee = Math.floor(goal * 0.055);
// 			let amountAlert = "";
			
// 			if(goal < 500000) {
// 				amountAlert = "50만원 이상의 금액을 입력해 주세요.";
// 			} else if(goal > 9999999999) {
// 				amountAlert = "9,999,999,999원 이하인 금액을 입력해주세요..";
// 			}
			
// 			$(".amount-alert").text(amountAlert);
			
			
// 			$("#creditFee").text(creditFee);
// 			$("#sonFee").text(sonFee);
// 			$("#totalFee").text(sonFee + creditFee);
// 			$("#totalAmount").text(goal - (sonFee + creditFee));
			
			
			
			
// 		});
		
		
		
	});
</script>
<div class="write-view-content">
	<div class="view-content-form">
		<div class="projectItemWarp">
			<dl class="projectInfo">
				<dt class="projectInfo-title">
					목표 금액
					<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
				</dt>
				<dd class="projectInfo-description">
					프로젝트 성공을 위해 필요한 금액을 설정해 주세요.<br>
				</dd>
				<div class="projectInfo-notice">
					<div class="funding-notice">
						목표금액 설정 시 꼭 알아두세요!
					</div>
					<div>
						<p>종료일까지 목표금액을 달성하지 못하면 후원자 결제가 진행되지 않습니다.</p>
						<p>후원 취소 및 결제 누락을 대비해 10% 이상 초과 달성을 목표로 해주세요.</p>
						<p>제작비, 선물 배송비, 인건비, 예비 비용 등을 함께 고려해주세요.</p>
						<p>목표금액은 50만원 이상 1억 미만으로 설정해 주세요.</p>
					</div>
				</div>
			</dl>
			<div class="projectItem-form">
				<div class="style-projectFunding">
					<p class="tiny-title">목표금액</p>
					<div>
						<div class="input-fundingCost">
							<span class="fundingInputCost">
								<input type="text" maxlength="10" class="InputTextFunding" name="pro_goal" id="pro_goal" value="${pro.pro_goal }">
<!-- 								<input type="text" maxlength="13" class="InputTextFunding" name="pro_goal" id="pro_goal"  oninput="maxLengthCheck(this)"> -->
<!-- 								<input type="number" min="500000" max="9999999999" class="InputTextFunding" inputmode="numeric" name="pro_goal" id="pro_goal"> -->
								원
							</span>
						</div>
						<div class="alert-cost">
							<p class="amount-alert"></p>
						</div>
					</div>
					<div class="projectFunding-cal">
						<div class="totalAmount">
							<span>목표금액 달성 시 예상 수령액</span>
							<span class="totalSpan"><span id="totalAmount">0</span>원</span>
						</div>
						<div class="feeWarp">
							총 수수료
							<span><span id="totalFee">0</span>원</span>
						</div>
						<div class="feeWarp">
							결제대행 수수료(총 결제 성공금액의 3% + VAT)
							<span><span id="creditFee">0</span>원</span>
						</div>
						<div class="feeWarp">
							손에손 수수료(총 결제 성공금액의 5% + VAT)
							<span><span id="sonFee">0</span>원</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="projectItemWarp">
			<dl class="projectInfo">
				<dt class="projectInfo-title">
					펀딩 일정
					<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
				</dt>
				<dd class="projectInfo-description">
					설정한 일시가 되면 펀딩이 자동 시작됩니다.<br>
					펀딩 시작 전까지 날짜를 변경할 수 있습니다.
				</dd>
				<div class="projectInfo-notice">
					<div class="funding-notice">
						펀딩기간 설정 시 꼭 알아두세요!
					</div>
					<div>
						<p>선택하신 종료일 다음 날 0시에 펀딩이 종료됩니다.</p>
						<p>프로젝트가 성공하면 펀딩 종료 다음 날 후원금이 결제됩니다. 결제가 이루어지지 않은 경우 24시간 간격으로 7일 동안 결제를 시도합니다.</p>
						<p>모금액은 후원자 결제 종료 후 7일 뒤 입금됩니다.<br>(주말·공휴일은 다음날 입금됩니다.)</p>
					</div>
				</div>
			</dl>
			<div class="projectItem-form">
				<div>
					<ol>
						<li class="project-date">
							<div class="projectForm-date">
								<div class="projectFormHalf-date">
									<p class="tiny-title">시작일</p>
									<input type="date" class="input-date" id="start-funding" name="pro_startDt">
								</div>
								<div class="projectFormHalf-date">
									<p class="tiny-title">시작 시간</p>
									<select name="pro_start_time" class="select_detail" id="pro_start_time">
										<option value="09:00:00" <c:if test="${pro.pro_start_time eq '09:00:00' }">selected</c:if>>09:00</option>
										<option value="10:00:00" <c:if test="${pro.pro_start_time eq '10:00:00' }">selected</c:if>>10:00</option>
										<option value="11:00:00" <c:if test="${pro.pro_start_time eq '11:00:00' }">selected</c:if>>11:00</option>
										<option value="12:00:00" <c:if test="${pro.pro_start_time eq '12:00:00' }">selected</c:if>>12:00</option>
										<option value="13:00:00" <c:if test="${pro.pro_start_time eq '13:00:00' }">selected</c:if>>13:00</option>
										<option value="14:00:00" <c:if test="${pro.pro_start_time eq '14:00:00' }">selected</c:if>>14:00</option>
										<option value="15:00:00" <c:if test="${pro.pro_start_time eq '15:00:00' }">selected</c:if>>15:00</option>
										<option value="16:00:00" <c:if test="${pro.pro_start_time eq '16:00:00' }">selected</c:if>>16:00</option>
										<option value="17:00:00" <c:if test="${pro.pro_start_time eq '17:00:00' }">selected</c:if>>17:00</option>
										<option value="18:00:00" <c:if test="${pro.pro_start_time eq '18:00:00' }">selected</c:if>>18:00</option>
									</select>
								</div>
							</div>
							<div class="projectFormHalf-date">
								<p class="tiny-title">종료일</p>
								<input type="date" class="input-date" name="pro_endDt" id="end-funding">
							</div>
							<div class="projectFormHalf-date">
								<p class="tiny-title">펀딩기간</p>
								<span><span id="fundingDays">0</span>일</span>
							</div>
						</li>
						<li class="project-date">
							<div class="projectForm-date">
								<div class="projectFormHalf-date">
									<p class="tiny-title">후원자 결제종료</p>
									<span id="paymentDt">종료일 다음날부터 7일</span>
								</div>
							</div>
						</li>
						<li class="project-date">
							<div class="projectForm-date">
								<div class="projectFormHalf-date">
									<p class="tiny-title">정산일</p>
									<span id="calculateDt">결제종료 다음날부터 7일</span>	
								</div>
							</div>
						</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</div>
