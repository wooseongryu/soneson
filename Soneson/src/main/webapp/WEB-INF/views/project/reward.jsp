<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 카테고리에 따른 입력폼 -->
<div>
	<div class="write-view-content">
		<div class="view-content-form">
			<div class="projectItemWarp">
				<div class="projectInfo-title">
					내가 만든 아이템
					<ul>
						<li class="previewItem-reward">
							<div class="previewItem-btn">
								아이템~~~
							</div>
							<button class="preivewItem-removeBtn">
								<i class="bi bi-trash3"></i>
							</button>
						</li>
					</ul>
				</div>
				<form action="" name="project-item">
					<div class="projectItem-form">
						<div class="style-projectFunding">
							<p class="tiny-title">아이템 만들기</p>
							<p class="projectInfo-description">
								아이템은 리워드에 포함되는 구성품목입니다.<br>
								아이템 생성 후 리워드를 구성하세요.
							</p>
							<div class="margindiv">
								<div>
									<p class="tiny-title">아이템 이름</p>
								</div>
								<div class="projectItem-form">
									<input type="text" class="input_detail">
								</div>
								<div class="alert-title">
									<p></p>
								</div>
							</div>
							<section class="reward-section">
								<div class="reward-optiondiv">
									<p class="tiny-title">옵션조건</p>
									<p class="projectInfo-description">
										후원자가 옵션 목록에서 선택이 필요하다면 객관식을, 
										후원자의 직접 응답을 받으셔야 한다면 주관식을, 
										옵션이 필요 없다면 없음을 선택하세요.
									</p>
								</div>
								<div class="select-rewardoptionWarp">
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="rewardItemOption" id="reward-option0" value="0">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="reward-option0">없음</label>
											</div>
										</div>
									</div>
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="rewardItemOption" id="reward-option1" value="1">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="reward-option1">주관식</label>
											</div>
										</div>
									</div>
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="rewardItemOption"  id="reward-option2" value="2">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="reward-option2">객관식</label>
											</div>
										</div>
									</div>
								</div>
							</section>
							<section class="reward-section2">
								<div id="radio-value0" style="display: none;">
								</div>
								<div id="radio-value1" style="display: none;">
									<div>
										<p class="tiny-title">옵션 항목</p>
									</div>
									<div class="projectItem-form">
										<input type="text" class="input_detail" placeholder="예) 각인문구를 작성해주세요.">
									</div>
								</div>
								<div id="radio-value2" style="display: none;">
									<div class="radio-optionDiv">
										<div>
											<p class="tiny-title">옵션 항목</p>
											<p class="projectInfo-description">
												2개 이상의 옵션 항목을 만들어주세요.<br>
												한 칸에 하나의 옵션을 작성해주세요.
											</p>
										</div>
										<div>
											<button type="button" id="add-rewardItemOption"><i class="bi bi-plus-lg"></i></button>
										</div>
									</div>
									<div class="alert-option">
										<p></p>
									</div>
									<div class="projectItem-form">
										<input type="text" class="input_detail" placeholder="예) 블랙-220mm">
									</div>
									<div class="projectItem-form">
										<input type="text" class="input_detail">
									</div>
								</div>
							</section>
							<div class="formBtnDiv">
								<input class="formBtn" type="reset" value="초기화">
								<input class="formBtn" type="submit" value="등록" id="itemFormSubmitBtn">
							</div>
						</div>
					</div>
				</form>
			</div>
<!-- 					리워드 폼					 -->
			<div class="projectItemWarp">
				<div class="projectInfo-title">
					내가 만든 리워드
					<ul>
						<li class="previewItem-reward">
							<div class="previewItem-btn">
								리워드~~~
							</div>
							<button class="preivewItem-removeBtn">
								<i class="bi bi-trash3"></i>
							</button>
						</li>
					</ul>
				</div>
				<form action="" name="project-reward">
					<div class="projectItem-form">
						<div class="style-projectFunding">
							<p class="tiny-title">리워드 구성하기</p>
							<p class="projectInfo-description">
								다양한 금액대로 여러 개의 리워드를 만들어주세요.<br>
								펀딩 성공률이 높아지고, 더 많은 후원 금액을 모금할 수 있어요. 
							</p>
							<div class="margindiv">
								<div>
									<p class="tiny-title">아이템 선택</p>
								</div>
								<div class="projectItem-form">
									<select class="input_detail">
										<option>아이템1</option>
										<option>아이템2</option>
										<option>블랙핑크</option>
										<option>아이브</option>
										<option>까지만 적을래</option>
									</select>
								</div>
								<div class="alert-title">
									<p></p>
								</div>
							</div>
							<section class="reward-section">
								<div class="reward-optiondiv">
									<div class="margindiv">
										<div>
											<p class="tiny-title">구성 설명</p>
											<p class="projectInfo-description">
												얼리버드, 리미티드 에디션 등 선물에 대한 설명을 입력해주세요.
											</p>
										</div>
										<div class="projectItem-form">
											<input type="text" class="input_detail" placeholder="예) 봄 세트, 배송비포함">
										</div>
										<div class="alert-title">
											<p></p>
										</div>
									</div>
								</div>
							</section>
							<section class="reward-section">
								<div>
									<p class="tiny-title">수량 제한</p>
								</div>
								<div class="select-rewardoptionWarp">
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="rewardItem_total" id="total_Y" value="0">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="total_Y">있음</label>
											</div>
										</div>
									</div>
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="rewardItem_total" id="total_N" value="1">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="total_N">없음</label>
											</div>
										</div>
									</div>
								</div>
								<div class="totalItemDiv">
									<div id="radio-total0" style="display: none;">
										<div class="projectItem-form">
											<div class="inputAmount-form">
												<span class="input-amountSpan">
													<input type="number" min="1000" class="input_numDetail" placeholder="수량을 입력해주세요.">
													<div class="input-amountDiv">개</div>
												</span>
											</div>
										</div>
<!-- 												<div class="projectItem-form"> -->
<!-- 													<input type="number" min="1" max="1000" class="input_detail" placeholder="수량을 입력해주세요."> -->
<!-- 												</div> -->
									</div>
									<div id="radio-total1" style="display: none;">
									</div>
								</div>
							</section>
							<section class="reward-section">
								<div>
									<p class="tiny-title">배송 여부</p>
								</div>
								<div class="select-rewardoptionWarp">
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="rewardItem_delivery" id="delivery_Y" value="Y">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="delivery_Y">네</label>
											</div>
										</div>
									</div>
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="rewardItem_delivery" id="delivery_N" value="N">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="delivery_N">아니오</label>
											</div>
										</div>
									</div>
								</div>
							</section>
							<section class="reward-section">
								<div class="reward-optiondiv">
									<div class="margindiv">
										<div>
											<p class="tiny-title">후원 금액</p>
											<p class="projectInfo-description">
												배송이 필요한 선물은 배송비를 포함해주세요.
											</p>
										</div>
										<div class="projectItem-form">
											<div class="inputAmount-form">
												<span class="input-amountSpan">
													<input type="number" min="1000" class="input_numDetail" placeholder="1000원 이상의 금액을 입력하세요.">
													<div class="input-amountDiv">원</div>
												</span>
											</div>
										</div>
										<div class="alert-title">
											<p></p>
										</div>
									</div>
								</div>
							</section>
							<div class="formBtnDiv">
								<input class="formBtn" type="reset" value="초기화">
								<input class="formBtn" type="submit" value="등록" id="rewardFormSubmitBtn">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
