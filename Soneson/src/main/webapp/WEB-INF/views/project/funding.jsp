<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	$(function() {
		$("#start-funding").attr("min", tommorrow);
		
		//아이템 옵션
		$("input[type=radio][name=rewardItemOption]").on("click", function() {
			
			let ckv = $(this).val();
			$.each($('.reward-section2').children(), function (index, el) {
//					debugger;
				var attr = ckv == index ? 'block' : 'none';
				$(el).css('display', attr);
				
			});
			
		});
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
					</div>
				</div>
			</dl>
			<div class="projectItem-form">
				<div class="style-projectFunding">
					<p class="tiny-title">목표금액</p>
					<div>
						<div class="input-fundingCost">
							<span class="fundingInputCost">
								<input type="number" min="500000" max="9999999999" class="InputTextFunding" inputmode="numeric" name="pro_goal">
								원
							</span>
						</div>
						<div class="alert-cost">
							<p class=""></p>
						</div>
					</div>
					<div class="projectFunding-cal">
						<div class="totalAmount">
							<span>목표금액 달성 시 예상 수령액</span>
							<span class="">원</span>
						</div>
						<div class="feeWarp">
							총 수수료
							<span>원</span>
						</div>
						<div class="feeWarp">
							결제대행 수수료(총 결제 성공금액의 3% + VAT)
							<span>원</span>
						</div>
						<div class="feeWarp">
							손에손 수수료(총 결제 성공금액의 5% + VAT)
							<span>원</span>
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
					시작일 오전 9시 부터 펀딩이 자동 시작됩니다.<br>
					펀딩 시작 전까지 날짜를 변경할 수 있습니다.
				</dd>
				<div class="projectInfo-notice">
					<div class="funding-notice">
						펀딩기간 설정 시 꼭 알아두세요!
					</div>
					<div>
						<p>선택하신 종료일 다음 날 0시에 펀딩이 종료됩니다.</p>
						<p>프로젝트가 성공하면 펀딩 종료 다음 날 후원금이 결제됩니다. 결제가 이루어지지 않은 경우 24시간 간격으로 7일 동안 결제를 시도합니다.</p>
						<p>모금액은 후원자 결제 종료 다음 날부터 영업일 기준(주말 및 공휴일 제외) 7일째 되는 날 입금됩니다.</p>
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
									<p class="tiny-title">종료일</p>
									<input type="date" class="input-date" name="pro_EndDt">
								</div>
							</div>
							<div class="projectFormHalf-date">
								<p class="tiny-title">펀딩기간</p>
								일
							</div>
						</li>
						<li class="project-date">
							<div class="projectForm-date">
								<div class="projectFormHalf-date">
									<p class="tiny-title">후원자 결제종료</p>
									2023.10.23
								</div>
							</div>
						</li>
						<li class="project-date">
							<div class="projectForm-date">
								<div class="projectFormHalf-date">
									<p class="tiny-title">정산일</p>
									2023.10.30	
								</div>
							</div>
						</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</div>
