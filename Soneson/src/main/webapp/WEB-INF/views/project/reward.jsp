<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<script>
	function blockdiv() {
// 		let ckv = $(this).val();
		$.each($('.reward-section2').children(), function (index, el) {
//					debugger;
			var attr = ckv == index ? 'block' : 'none';
			$(el).css('display', attr);
			
		});
	}


	$(function() {
		//아이템 옵션
// 		$("input[type=radio][name=item_condition]").on("click", blockdiv());
		$("input[type=radio][name=item_condition]").on("click", function() {
			let ckv = $(this).val();
// 			blockdiv();
			$.each($('.reward-section2').children(), function (index, el) {
// 					debugger;
				var attr = ckv == index ? 'block' : 'none';
				$(el).css('display', attr);
				
			});
			
		});
		
		//객관식 옵션추가
		$("#add-rewardItemOption").click(function() {
//				debugger;
			console.log("왜안돼");
			$("#radio-value2").append(
				'<div class="projectItem-form">'
				+ '<input type="text" class="input_detail" name="item_option">'
				+ '</div>'
			);
		});
	});
	
	function deleteItem(item_code, pro_code) {
		let dItem = confirm("삭제하시겠습니까?");
		
		if(dItem) {
		alert(item_code + typeof item_code + ", " + pro_code + typeof pro_code);
			$.ajax({
				type: "POST",
				url: "deleteItem",
				data: {
					"pro_code": pro_code,
					"item_code": item_code
				},
				dataType: "text",
				success: function(result) {
					console.log(result + typeof result);
					$("#itemList_" + item_code).remove();
					$("#itemListUl_" + item_code).remove();
					alert(result);
				},
				error: function() {
					console.log("에러");
				}
			});	
			
		}//삭제
		
	}
	
	
	//데이터 가져오기
	function insertItem(pro_code) {
		
		let item_name = $("#item_name").val();
		let item_condition = $("input[name=item_condition]:checked").val();
		console.log("item_name: " + item_name);
		console.log("item_condition: " + item_condition);
		
		if(item_name == "") {
			alert("이름을 작성해 주세요.");
			return;
		}
		if(item_condition == "" || item_condition == null) {
			alert("옵션조건을 선택해 주세요.");
			return;
		}
		
		let get_option = $(".reward-section2 input[type=text]");
		let item_option = "";
		$.each(get_option, function (index, value) {
			console.log(value);
			console.log('value =' + $(value).val());
			item_option += $(value).val() + '/';
		});
		console.log(item_option);
		
		$.ajax({
			type: "POST",
			url: "insertItem",
			data: {
				"pro_code": pro_code,
				"item_name": item_name,
				"item_condition": item_condition,
				"item_option": item_option
			},
			dataType: "json",
			success: function(item) {
				let str = "";
				alert("저장되었습니다.");
				
// 				for(let item of data) {
										
					str += '<ul id="itemList_' + item.item_code + '">'
					str += 		'<li class="previewItem-reward">'
					str += 			'<div class="previewItem-btn">'
					str += 				'<h6>' + item.item_name + '</h6>'
					str += 				'<br>'
					str += 				'<p>'+ item.item_condition +'<br>'+ item.item_option + '</p>'
					str += 			'</div>'
					str += 			'<button class="preivewItem-removeBtn" type="button" id="deleteItem_' + item.item_code + '" onclick="deleteItem('+ item.item_code + ',' + pro_code + ')">'
					str += 				'<i class="bi bi-trash3"></i>'
					str += 			'</button>'
					str += 		'</li>'
					str += '</ul>'
// 				}
				$("#preview-itemList").append(str);
				
				$("#itemInsert-form").empty();
				$("#itemInsert-form").append(
						'<div class="style-projectFunding" id="registItem">'
						+	'<p class="tiny-title">아이템 만들기</p>'
						+	'<p class="projectInfo-description">'
						+		'아이템은 리워드에 포함되는 구성품목입니다.<br>'
						+		'아이템 생성 후 리워드를 구성하세요.'
						+	'</p>'
						+	'<div class="margindiv">'
						+		'<div>'
						+			'<p class="tiny-title">아이템 이름</p>'
						+		'</div>'
						+		'<div class="projectItem-form">'
						+			'<input type="text" class="input_detail" name="item_name" id="item_name">'
						+		'</div>'
						+		'<div class="alert-title">'
						+			'<p></p>'
						+		'</div>'
						+	'</div>'
						+	'<section class="reward-section">'
						+		'<div class="reward-optiondiv">'
						+			'<p class="tiny-title">옵션조건</p>'
						+			'<p class="projectInfo-description">'
						+				'후원자가 옵션 목록에서 선택이 필요하다면 객관식을, '
						+				'후원자의 직접 응답을 받으셔야 한다면 주관식을, '
						+				'옵션이 필요 없다면 없음을 선택하세요.'
						+			'</p>'
						+		'</div>'
						+		'<div class="select-rewardoptionWarp">'
						+			'<div class="select-radioWarp">'
						+				'<input type="radio" class="radioBtn-rewardItem" name="item_condition" id="reward-option0" value="0">'
						+				'<div class="radio-inner">'
						+					'<div class="radio-label">'
						+						'<label for="reward-option0">없음</label>'
						+					'</div>'
						+				'</div>'
						+			'</div>'
						+			'<div class="select-radioWarp">'
						+				'<input type="radio" class="radioBtn-rewardItem" name="item_condition" id="reward-option1" value="1">'
						+				'<div class="radio-inner">'
						+					'<div class="radio-label">'
						+						'<label for="reward-option1">주관식</label>'
						+					'</div>'
						+				'</div>'
						+			'</div>'
						+			'<div class="select-radioWarp">'
						+				'<input type="radio" class="radioBtn-rewardItem" name="item_condition"  id="reward-option2" value="2">'
						+				'<div class="radio-inner">'
						+					'<div class="radio-label">'
						+						'<label for="reward-option2">객관식</label>'
						+					'</div>'
						+				'</div>'
						+			'</div>'
						+		'</div>'
						+	'</section>'
						+	'<section class="reward-section2">'
						+		'<div id="radio-value0" style="display: none;">'
						+		'</div>'
						+		'<div id="radio-value1" style="display: none;">'
						+			'<div>'
						+				'<p class="tiny-title">옵션 항목</p>'
						+			'</div>'
						+			'<div class="projectItem-form">'
						+				'<input type="text" class="input_detail" placeholder="예) 각인문구를 작성해주세요." name="item_option">'
						+			'</div>'
						+		'</div>'
						+		'<div id="radio-value2" style="display: none;">'
						+			'<div class="radio-optionDiv">'
						+				'<div>'
						+					'<p class="tiny-title">옵션 항목</p>'
						+					'<p class="projectInfo-description">'
						+						'2개 이상의 옵션 항목을 만들어주세요.<br>'
						+						'한 칸에 하나의 옵션을 작성해주세요.'
						+					'</p>'
						+				'</div>'
						+				'<div>'
						+					'<button type="button" id="add-rewardItemOption"><i class="bi bi-plus-lg"></i></button>'
						+				'</div>'
						+			'</div>'
						+			'<div class="alert-option">'
						+				'<p></p>'
						+			'</div>'
						+			'<div class="projectItem-form">'
						+				'<input type="text" class="input_detail" placeholder="예) 블랙-220mm" name="item_option">'
						+			'</div>'
						+			'<div class="projectItem-form">'
						+				'<input type="text" class="input_detail" name="item_option">'
						+			'</div>'
						+		'</div>'
						+	'</section>'
						+	'<div class="formBtnDiv">'
						+		'<button type="button" onclick="insertItem(\'' + pro_code + '\')">등록</button>'
						+	'</div>'
						+'</div>'	
						
				
				);
// 				$("input[type=radio][name=item_condition]").on("click", blockdiv());
				$("input[type=radio][name=item_condition]").on("click", function() {
					
					let ckv = $(this).val();
// 					blockdiv();
					$.each($('.reward-section2').children(), function (index, el) {
						var attr = ckv == index ? 'block' : 'none';
						$(el).css('display', attr);
						
					});
					
				});
				
				//리워드창에도 추가
				$("#selectitem-rewardForm").append(
						'<div>'
						+	'<ul id="itemListUl_' + item.item_code + '">'
						+		'<li class="reward-select-itemList">'
						+			'<input type="checkbox" value="' + item.item_name + '" name="reward_item_name" id="checkitem'+ item.item_code +'">'
						+			'<label class="checkItemLabel" for="checkitem' + item.item_code + '">' + item.item_name + '</label>'
						+		'</li>'
						+	'</ul>'
						+'</div>'	
				);
				
				
			},
			error: function() {
				console.log("에러");
			}
			
		});
		
		
	}//아이템등록끝
	
	
	//리워드폼
	$(function() {
		
		$("input[type=radio][name=reward_isCount]").on("click", function() {
			let ckv = $(this).val();
// 			blockdiv();
			$.each($('.totalItemDiv').children(), function (index, el) {
// 					debugger;
				var attr = ckv == index ? 'block' : 'none';
				$(el).css('display', attr);
				
			});
			
		});
		
		
	});
	

	
</script>
<!-- 카테고리에 따른 입력폼 -->

<div>
	<div class="write-view-content">
		<div class="view-content-form">
			<div class="projectItemWarp">
				<div class="projectInfo-title" id="preview-itemList">
					내가 만든 아이템
					<c:if test="${not empty itemList }">
						<c:forEach var="item" items="${itemList }">
							<ul id="itemList_${item.item_code }">
								<li class="previewItem-reward">
									<div class="previewItem-btn">
										<h6>${item.item_name }</h6>
										<br>
										<p>${item.item_condition }<br>
										${item.item_option }</p>
										
									</div>
									<button class="preivewItem-removeBtn" type="button" id="deleteItem_${item.item_code }" onclick="deleteItem(${item.item_code}, ${pro.pro_code })">
										<i class="bi bi-trash3"></i>
									</button>
								</li>
							</ul>
						</c:forEach>
					</c:if>
				</div>
<!-- 				<form action="" name="project-item"> -->
				<div class="projectItem-form" id="itemInsert-form">
					<div class="style-projectFunding" id="registItem">
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
								<input type="text" class="input_detail" name="item_name" id="item_name">
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
									<input type="radio" class="radioBtn-rewardItem" name="item_condition" id="reward-option0" value="0">
									<div class="radio-inner">
										<div class="radio-label">
											<label for="reward-option0">없음</label>
										</div>
									</div>
								</div>
								<div class="select-radioWarp">
									<input type="radio" class="radioBtn-rewardItem" name="item_condition" id="reward-option1" value="1">
									<div class="radio-inner">
										<div class="radio-label">
											<label for="reward-option1">주관식</label>
										</div>
									</div>
								</div>
								<div class="select-radioWarp">
									<input type="radio" class="radioBtn-rewardItem" name="item_condition"  id="reward-option2" value="2">
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
									<input type="text" class="input_detail" placeholder="예) 각인문구를 작성해주세요." name="item_option">
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
									<input type="text" class="input_detail" placeholder="예) 블랙-220mm" name="item_option">
								</div>
								<div class="projectItem-form">
									<input type="text" class="input_detail" name="item_option">
								</div>
							</div>
						</section>
						<div class="formBtnDiv">
<!-- 								<input class="formBtn" type="reset" value="초기화"> -->
							<button type="button" onclick="insertItem('${pro.pro_code }')">등록</button>
<!-- 								<input class="formBtn" type="submit" value="등록" id="itemFormSubmitBtn"> -->
						</div>
					</div>
				</div>
			</div>
<!-- 					리워드 폼					 -->
			<div class="projectItemWarp">
				<div class="projectInfo-title" id="preview-rewardList">
					내가 만든 리워드
					<c:if test="${not empty rewardList }">
						<c:forEach var="reward" items="rewardList">
							<ul>
								<li class="previewItem-reward">
									<div class="previewItem-btn">
	<%-- 								<h6>${reward.reward_amount }</h6> --%>
									<br>
									<p>${reward.reward_explan }<br>
									${reward.reward_item_name }<br>
									${reward.reward_count }</p>
										
										
									</div>
									<button class="preivewItem-removeBtn" id="rewardDelete${reward.reward_code }">
										<i class="bi bi-trash3"></i>
									</button>
								</li>
							</ul>
						</c:forEach>
					</c:if>
				</div>
<!-- 				<form action="" name="project-reward"> -->
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
								<div class="projectItem-form" id="selectitem-rewardForm">
									<div>
										<c:forEach var="item" items="${itemList }">
											<ul id="itemListUl_${item.item_code }">
												<li class="reward-select-itemList">
													<input type="checkbox" value="${item.item_name }" name="reward_item_name" id="checkitem${item.item_code }">
													<label class="checkItemLabel" for="checkitem${item.item_code }">${item.item_name }</label>
												</li>
											</ul>
										</c:forEach>
									</div>
<!-- 										<button type="button"></button> -->
<!-- 									<select class="input_detail" name="item_name"> -->
<%-- 											<option>${item.item_name }</option> --%>
<!-- 											<option>아이템2</option> -->
<!-- 											<option>블랙핑크</option> -->
<!-- 											<option>아이브</option> -->
<!-- 											<option>까지만 적을래</option> -->
<!-- 									</select> -->
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
											<input type="text" class="input_detail" placeholder="예) 봄 세트, 배송비포함" name="reward_explan">
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
										<input type="radio" class="radioBtn-rewardItem" name="reward_isCount" id="total_Y" value="0">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="total_Y">있음</label>
											</div>
										</div>
									</div>
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="reward_isCount" id="total_N" value="1">
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
													<input type="number" min="1" max="1000" class="input_numDetail" placeholder="수량을 입력해주세요." name="reward_count">
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
										<input type="radio" class="radioBtn-rewardItem" name="reward_isDeliv" id="delivery_Y" value="Y">
										<div class="radio-inner">
											<div class="radio-label">
												<label for="delivery_Y">네</label>
											</div>
										</div>
									</div>
									<div class="select-radioWarp">
										<input type="radio" class="radioBtn-rewardItem" name="reward_isDeliv" id="delivery_N" value="N">
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
													<input type="number" min="1000" class="input_numDetail" placeholder="1000원 이상의 금액을 입력하세요." name="reward_amount">
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
<!-- 								<input class="formBtn" type="reset" value="초기화"> -->
<!-- 								<input class="formBtn" type="submit" value="등록" id="rewardFormSubmitBtn"> -->
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
