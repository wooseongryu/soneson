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
				console.log(el);
				var attr = ckv == index ? 'block' : 'none';
// 				var attr2 = ckv == index ? 'false' : 'true';
				$(el).css('display', attr);
// 				$(el.find('input[type=text]')).css('disabled', attr2);
			});
			
			
			
		});
		
		//객관식 옵션추가
		$("#add-rewardItemOption").click(function() {
// 				debugger;
			$("#radio-value2").append(
				'<div class="projectItem-form">'
				+ '<input type="text" class="input_detail" name="item_option">'
				+ '</div>'
			);
		});
	});
	
	function deleteItem(item_code, pro_code) {
		let dItem = confirm("삭제하시겠습니까?");
		
		//리워드에 해당아이템 포함되어 있으면 리워드도 삭제? or 삭제금지 
		// -> 어떻게? 고민 좀....
		if(dItem) {
// 		alert(item_code + typeof item_code + ", " + pro_code + typeof pro_code);
			$.ajax({
				type: "POST",
				url: "deleteItem",
				data: {
					"pro_code": pro_code,
					"item_code": item_code
				},
				dataType: "json",
				success: function(result) {
// 					console.log(result + typeof result);
					if(result) {
						$("#itemList_" + item_code).remove();
						$("#itemListUl_" + item_code).remove();
						alert("아이템이 삭제되었습니다.");
						$("#itemListUl_" + item_code).remove();
						
						undo = {
								targetHtml : $("#rewardInsert-form").html()
						}
						console.log(undo.targetHtml);
						
						
					} else {
						alert("리워드에 포함되어있는 아이템입니다.\n리워드 먼저 삭제해주세요.");
					}
				},
				error: function() {
					console.log("에러");
				}
			});	
			
		}//삭제
		
	}
	
	let undo;
	//데이터 저장
	function insertItem(pro_code) {
		
		let item_name = $("#item_name").val();
		let item_condition = $("input[name=item_condition]:checked").val();
		let option1 = $("#option_1").val();
		let option2 = $("#option_2").val();
		let option_2_1 = $("#option_2_1").val();
// 		console.log("item_name: " + item_name);
// 		console.log("item_condition: " + item_condition);
		
		if(item_name == "") {
			alert("이름을 작성해주세요.");
			return;
		}
		if(item_condition == "" || item_condition == null) {
			alert("옵션조건을 선택해주세요.");
			return;
		}
		//주관식옵션
		if(item_condition == '1' && option1 == "") {
			alert("세부옵션을 작성해주세요.");
			return;
			
		}
		//객관식옵션
		if(item_condition == '2' && (option2 == "" || option_2_1 == "")) {
			alert("세부옵션을 2개 이상 작성해주세요.");
			return;
		}
		
		let get_option = $(".reward-section2 input[type=text]");
		let item_option = "";
		let optionArr = [];
		
		switch (Number(item_condition)) {
		case 1: 
			item_option = $('input[name=item_option]')[0].value; 
			break;
		case 2:
			get_option = $(".reward-section2 input[type=text]").get();
			get_option.shift();
			$.each(get_option, function (index, input) {
				optionArr.push($(this).val());
			});
			item_option = optionArr.join('|');
			break;
		}		
		
		console.log(item_option);
		return;		
		
		
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
						+				'<input type="text" class="input_detail" placeholder="예) 각인문구를 작성해주세요." name="item_option" id="option_1">'
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
						+				'<input type="text" class="input_detail" placeholder="예) 블랙-220mm" name="item_option" id="option_2">'
						+			'</div>'
						+			'<div class="projectItem-form">'
						+				'<input type="text" class="input_detail" name="item_option" id="option_2_1">'
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
				//객관식 옵션추가
				$("#add-rewardItemOption").click(function() {
//		 				debugger;
					$("#radio-value2").append(
						'<div class="projectItem-form">'
						+ '<input type="text" class="input_detail" name="item_option">'
						+ '</div>'
					);
				});
				
				//리워드창에도 추가
				$("#selectitem-rewardForm").append(
							'<ul id="itemListUl_' + item.item_code + '">'
						+		'<li class="reward-select-itemList">'
						+			'<input type="checkbox" value="' + item.item_name + '" name="reward_item_name" id="checkitem'+ item.item_code +'">'
						+			'<input type="hidden" value="' + item.item_code + '" name="reward_item_code" id="checkitemCode' + item.item_code + ' ">'
						+			'<label class="checkItemLabel" for="checkitem' + item.item_code + '">' + item.item_name + '</label>'
						+		'</li>'
						+	'</ul>'
				);
				
				undo = {
						targetHtml : $("#rewardInsert-form").html()
				}
				console.log(undo.targetHtml);
			},
			error: function() {
				console.log("에러");
			}
			
		});
		
		
	}//아이템등록끝
	
	
	//리워드폼
	let count = "";
	let amount = "";
	
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
		
		//수량
		$("#reward_count").on('keydown keyup', function() {
			count = $(this).val().replace(/^0+|[^0-9]/g, '');
			$(this).val(count);
			console.log(count);
			if(Number(count) > 1000) {
// 			debugger;
				$("#count-alert").css('display', 'block');
				$("#alert-count").text("1000개 이하로 입력해 주세요.");
			} else {
				$("#count-alert").css('display', 'none');
			}
			
		});
		
		//금액
		$("#reward_amount").on('keydown keyup blur', function() {
			amount = $(this).val().replace(/^0+|[^0-9]/g, ''); //숫자만 입력
			$(this).val(amount.replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			
			if(Number(amount) < 1000) {
// 				$("#amount-alert").css("border", "1px solid rgb(248, 100, 83)");
				amountAlert = "1000원 이상의 금액을 입력해 주세요.";
				$(this).focus();
			} else if(Number(amount) > 500000) {
// 				$("#amount-alert").css("border", "1px solid rgb(248, 100, 83)");
				amountAlert = "500,000원 이하인 금액을 입력해주세요.";
				$(this).focus();
			} else {
// 				$("#amount-alert").css("border", "1px solid rgb(240, 240, 240)");
				amountAlert = "";
			}
			
			$("#alert-amount").text(amountAlert);
		});
		
		
	});
	
	undo = {
			targetHtml : $("#rewardInsert-form").html()
	}
	//리워드 저장하기
	function insertReward(pro_code) {
		
		let reward_item_name = "";
		let reward_item_code = "";
		let nameArr = [];
		let codeArr = [];
		$("input[name=reward_item_name]:checked").each(function() {
					nameArr.push($(this).val());
					codeArr.push($(this).next().val());
		});
		
		reward_item_name = nameArr.join('|');
		reward_item_code = codeArr.join('|');
		
		let reward_explan = $("#reward_explan").val();
		let reward_isCount = $("input[name=reward_isCount]:checked").val();
		let reward_count = $("#reward_count").val();
		let reward_isDeliv = $("input[name=reward_isDeliv]:checked").val();
		let reward_amount = $("#reward_amount").val();
		console.log(reward_item_name);
		console.log("아이템코드: " + reward_item_code);
		console.log(reward_explan);
		console.log("reward_isCount" + reward_isCount);
		console.log(reward_count + typeof reward_count);
		console.log(reward_isDeliv);
		console.log(reward_amount);
		
		if(reward_item_name == "") {
			alert("아이템을 한개 이상 선택해주세요.");
			return;
		}
		if(reward_explan == "") {
			reward_explan = " ";
		}
		if(reward_isCount == "" || reward_isCount == null) {
			alert("수량제한여부를 선택해주세요.");
			return;
		}
		if(reward_isCount == "0" && Number(reward_count) == 0) {
			alert("수량을 작성해주세요.");
			return;
		} // 나중에 1000개 이상인것도 제약걸어두기
		if(reward_isDeliv == "" || reward_isDeliv == null) {
			alert("배송여부를 선택해주세요.");
			return;
		}
		if(reward_amount == "") {
			alert("리워드 금액을 입력해주세요.");
			return;
		} // 금액판별 추가하기
		
		$.ajax({
			type: "POST",
			url: "insertReward",
			data: {
				"pro_code": pro_code,
				"reward_item_name": reward_item_name,
				"reward_item_code": reward_item_code,
				"reward_explan": reward_explan,
				"reward_isCount": reward_isCount,
				"reward_count": reward_count,
				"reward_isDeliv": reward_isDeliv,
				"reward_amount": reward_amount
			},
			dataType: "json",
			success: function(reward) {
				alert("저장되었습니다.");
				console.log(reward.reward_code);
				//여기까지 성공
				// #preview-itemList 에 append하고 delete구문짜기
				let str= "";
				str +='<ul id="rewardList_' + reward.reward_code + '">'
				str +=	'<li class="previewItem-reward">'
				str +=		'<div class="previewItem-btn">'
				str +=			'<h4>' + reward.reward_amount + '원+</h4>'
				str +=			'<br>'
				str +=			'<p>'
				str +=				reward.reward_explan + '<br>'
				str +=				reward.reward_item_name + '<br>'
				
				if(reward.reward_count == "0") {
					str +=			'수량 : 제한없음'
				} else {
					str +=			'수량 : ' + reward.reward_count + '개'
				}
				str +=			'</p>'
				str +=		'</div>'
				str +=		'<button type="button" class="preivewItem-removeBtn" id="rewardDelete_' + reward.reward_code + '" onclick="deleteReward(' + reward.reward_code + ')">'
				str +=			'<i class="bi bi-trash3"></i>'
				str +=		'</button>'
				str +=	'</li>'
				str +='</ul>'
				$("#preview-rewardList").append(str);
				
				debugger;
				console.log("어카노..... " + undo.targetHtml);
				if(undo.targetHtml == undefined) {
	 				$("#rewardInsert-form").empty();
	 				$("#rewardInsert-form").append(
						
	 						'<div class="style-projectFunding">'
	 						+ 	'<p class="tiny-title">리워드 구성하기</p>'
	 						+ 	'<p class="projectInfo-description">'
	 						+ 		'다양한 금액대로 여러 개의 리워드를 만들어주세요.<br>'
	 						+ 		'펀딩 성공률이 높아지고, 더 많은 후원 금액을 모금할 수 있어요.'
	 						+ 	'</p>'
	 						+ 	'<div class="margindiv">'
	 						+ 		'<div>'
	 						+ 			'<p class="tiny-title">아이템 선택</p>'
	 						+ 		'</div>'
	 						+ 		'<div class="projectItem-form">'
	 						+ 			'<div id="selectitem-rewardForm">'
	 						+ 				'<c:forEach var="item" items="${itemList }">'
	 						+ 					'<ul id="itemListUl_${item.item_code }">'
	 						+ 						'<li class="reward-select-itemList">'
	 						+ 							'<input type="checkbox" value="${item.item_name }" name="reward_item_name" id="checkitem${item.item_code }">'
	 						+ 							'<input type="hidden" value="${item.item_code }" name="reward_item_code" id="checkitemCode${item.item_code }">'
	 						+ 							'<label class="checkItemLabel" for="checkitem${item.item_code }">${item.item_name }</label>'
	 						+ 						'</li>'
	 						+ 					'</ul>'
	 						+ 				'</c:forEach>'
	 						+ 			'</div>'
	 						+ 		'</div>'
	 						+ 		'<div class="alert-title">'
	 						+ 			'<p></p>'
	 						+ 		'</div>'
	 						+ 	'</div>'
	 						+ 	'<section class="reward-section">'
	 						+ 		'<div class="reward-optiondiv">'
	 						+ 			'<div class="margindiv">'
	 						+ 				'<div>'
	 						+ 					'<p class="tiny-title">구성 설명</p>'
	 						+ 					'<p class="projectInfo-description">'
	 						+ 						'얼리버드, 리미티드 에디션 등 선물에 대한 설명을 입력해주세요.'
	 						+ 					'</p>'
	 						+ 				'</div>'
	 						+ 				'<div class="projectItem-form">'
	 						+ 					'<input type="text" class="input_detail" placeholder="예) 봄 세트, 배송비포함" name="reward_explan" id="reward_explan">'
	 						+ 				'</div>'
	 						+ 				'<div class="alert-title">'
	 						+ 					'<p></p>'
	 						+ 				'</div>'
	 						+ 			'</div>'
	 						+ 		'</div>'
	 						+ 	'</section>'
	 						+ 	'<section class="reward-section">'
	 						+ 		'<div>'
	 						+ 			'<p class="tiny-title">수량 제한</p>'
	 						+ 		'</div>'
	 						+ 		'<div class="select-rewardoptionWarp">'
	 						+ 			'<div class="select-radioWarp">'
	 						+ 				'<input type="radio" class="radioBtn-rewardItem" name="reward_isCount" id="total_Y" value="0">'
	 						+ 				'<div class="radio-inner">'
	 						+ 					'<div class="radio-label">'
	 						+ 						'<label for="total_Y">있음</label>'
	 						+ 					'</div>'
	 						+ 				'</div>'
	 						+ 			'</div>'
	 						+ 			'<div class="select-radioWarp">'
	 						+ 				'<input type="radio" class="radioBtn-rewardItem" name="reward_isCount" id="total_N" value="1">'
	 						+ 				'<div class="radio-inner">'
	 						+ 					'<div class="radio-label">'
	 						+ 						'<label for="total_N">없음</label>'
	 						+ 					'</div>'
	 						+ 				'</div>'
	 						+ 			'</div>'
	 						+ 		'</div>'
	 						+ 		'<div class="totalItemDiv">'
	 						+ 			'<div id="radio-total0" style="display: none;">'
	 						+ 				'<div class="projectItem-form">'
	 						+ 					'<div class="inputAmount-form">'
	 						+ 						'<span class="input-amountSpan">'
	 						+ 							'<input type="text" maxlength="4" class="input_numDetail" placeholder="수량을 입력해주세요." name="reward_count" id="reward_count" value="0">'
	 						+ 							'<div class="input-amountDiv">개</div>'
	 						+ 						'</span>'
	 						+ 					'</div>'
	 						+ 				'</div>'
	 						+ 			'</div>'
	 						+ 			'<div class="alert-title-reward" id="count-alert">'
	 						+ 				'<span id="alert-count"></span>'
	 						+ 			'</div>'
	 						+ 			'<div id="radio-total1" style="display: none;">'
	 						+ 			'</div>'
	 						+ 		'</div>'
	 						+ 	'</section>'
	 						+ 	'<section class="reward-section">'
	 						+ 		'<div>'
	 						+ 			'<p class="tiny-title">배송 여부</p>'
	 						+ 		'</div>'
	 						+ 		'<div class="select-rewardoptionWarp">'
	 						+ 			'<div class="select-radioWarp">'
	 						+ 				'<input type="radio" class="radioBtn-rewardItem" name="reward_isDeliv" id="delivery_Y" value="Y">'
	 						+ 				'<div class="radio-inner">'
	 						+ 					'<div class="radio-label">'
	 						+ 						'<label for="delivery_Y">네</label>'
	 						+ 					'</div>'
	 						+ 				'</div>'
	 						+ 			'</div>'
	 						+ 			'<div class="select-radioWarp">'
	 						+ 				'<input type="radio" class="radioBtn-rewardItem" name="reward_isDeliv" id="delivery_N" value="N">'
	 						+ 				'<div class="radio-inner">'
	 						+ 					'<div class="radio-label">'
	 						+ 						'<label for="delivery_N">아니오</label>'
	 						+ 					'</div>'
	 						+ 				'</div>'
	 						+ 			'</div>'
	 						+ 		'</div>'
	 						+ 	'</section>'
	 						+ 	'<section class="reward-section">'
	 						+ 		'<div class="reward-optiondiv">'
	 						+ 			'<div class="margindiv">'
	 						+ 				'<div>'
	 						+ 					'<p class="tiny-title">후원 금액</p>'
	 						+ 					'<p class="projectInfo-description">'
	 						+ 						'배송이 필요한 선물은 배송비를 포함해주세요.'
	 						+ 					'</p>'
	 						+ 				'</div>'
	 						+ 				'<div class="projectItem-form">'
	 						+ 					'<div class="inputAmount-form">'
	 						+ 						'<span class="input-amountSpan">'
	 						+ 							'<input type="text" class="input_numDetail" maxlength="14" placeholder="1000원 이상의 금액을 입력하세요." name="reward_amount" id="reward_amount">'
	 						+ 							'<div class="input-amountDiv">원</div>'
	 						+ 						'</span>'
	 						+ 					'</div>'
	 						+ 				'</div>'
	 						+ 				'<div class="alert-title-reward" id="amount-alert">'
	 						+ 					'<span id="alert-amount"></span>'
	 						+ 				'</div>'
	 						+ 			'</div>'
	 						+ 		'</div>'
	 						+ 	'</section>'
	 						+ 	'<div class="formBtnDiv">'
	 						+ 		'<button type="button" onclick="insertReward(\'' + pro_code + '\')">등록</button>'
	 						+ 	'</div>'
	 						+ '</div>'
						
	 				);
				} else {
					$("#rewardInsert-form").html(undo.targetHtml);
				}
				
				$("input[type=radio][name=reward_isCount]").on("click", function() {
					let ckv = $(this).val();
//		 			blockdiv();
					$.each($('.totalItemDiv').children(), function (index, el) {
//		 					debugger;
						var attr = ckv == index ? 'block' : 'none';
						$(el).css('display', attr);
						
					});
					
				});
				
				//수량
				$("#reward_count").on('keydown keyup', function() {
					count = $(this).val().replace(/^0+|[^0-9]/g, '');
					$(this).val(count);
					console.log(count);
					if(Number(count) > 1000) {
//		 			debugger;
						$("#count-alert").css('display', 'block');
						$("#alert-count").text("1000개 이하로 입력해 주세요.");
					} else {
						$("#count-alert").css('display', 'none');
					}
					
				});
				
				//금액
				$("#reward_amount").on('keydown keyup blur', function() {
					amount = $(this).val().replace(/^0+|[^0-9]/g, ''); //숫자만 입력
					$(this).val(amount.replace(/\B(?=(\d{3})+(?!\d))/g, ','));
					
					if(Number(amount) < 1000) {
//		 				$("#amount-alert").css("border", "1px solid rgb(248, 100, 83)");
						amountAlert = "1000원 이상의 금액을 입력해 주세요.";
						$(this).focus();
					} else if(Number(amount) > 500000) {
//		 				$("#amount-alert").css("border", "1px solid rgb(248, 100, 83)");
						amountAlert = "500,000원 이하인 금액을 입력해주세요.";
						$(this).focus();
					} else {
//		 				$("#amount-alert").css("border", "1px solid rgb(240, 240, 240)");
						amountAlert = "";
					}
					
					$("#alert-amount").text(amountAlert);
				});
				
			},
			error:function(request, status, error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
			
			
		});//ajax끝
		
	}
	//리워드 삭제
	function deleteReward(reward_code) {
// 		console.log("삭제코드: " + reward_code);
		
		let dReward = confirm("삭제하시겠습니까?");
		if(dReward) {
			$.ajax({
				type: "POST",
				url: "deleteReward",
				data: {"reward_code": reward_code},
				dataType: "json",
				success: function(result) {
					console.log(result + ", 타입: " + typeof result);
					if(result) {
						$("#rewardList_" + reward_code).remove();
						alert("삭제되었습니다.");
						
					} else {
						alert("잠시 후 다시 시도해주세요.");
						
					}
				},
				error:function(request, status, error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});	
			
		}//삭제
	}
	 
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
									<input type="text" class="input_detail" placeholder="예) 각인문구를 작성해주세요." name="item_option" id="option_1">
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
									<input type="text" class="input_detail" placeholder="예) 블랙-220mm" name="item_option" id="option_2">
								</div>
								<div class="projectItem-form">
									<input type="text" class="input_detail" name="item_option" id="option_2_1">
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
						<c:forEach var="reward" items="${rewardList }">
							<ul id="rewardList_${reward.reward_code }">
								<li class="previewItem-reward">
									<div class="previewItem-btn">
									<h4>${reward.reward_amount }원+</h4>
									<br>
									<p>
										${reward.reward_explan }<br>
										${reward.reward_item_name }<br>
										수량 : ${reward.reward_count }
									</p>
									</div>
									<button class="preivewItem-removeBtn" type="button" id="rewardDelete${reward.reward_code }" onclick="deleteReward(${reward.reward_code})">
										<i class="bi bi-trash3"></i>
									</button>
								</li>
							</ul>
						</c:forEach>
					</c:if>
				</div>
				<div class="projectItem-form" id="rewardInsert-form">
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
								<div id="selectitem-rewardForm">
									<c:forEach var="item" items="${itemList }">
										<ul id="itemListUl_${item.item_code }">
											<li class="reward-select-itemList">
												<input type="checkbox" value="${item.item_name }" name="reward_item_name" id="checkitem${item.item_code }">
												<input type="hidden" value="${item.item_code }" name="reward_item_code" id="checkitemCode${item.item_code }">
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
										<input type="text" class="input_detail" placeholder="예) 봄 세트, 배송비포함" name="reward_explan" id="reward_explan">
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
<!-- 													<input type="number" min="1" max="1000" class="input_numDetail" placeholder="수량을 입력해주세요." name="reward_count"> -->
												<input type="text" maxlength="4" class="input_numDetail" placeholder="수량을 입력해주세요." name="reward_count" id="reward_count" value="0">
												<div class="input-amountDiv">개</div>
											</span>
										</div>
									</div>
								</div>
								<div class="alert-title-reward" id="count-alert">
									<span id="alert-count"></span>
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
												<input type="text" class="input_numDetail" maxlength="7" placeholder="1000원 이상의 금액을 입력하세요." name="reward_amount" id="reward_amount">
<!-- 													<input type="number" min="1000" class="input_numDetail" placeholder="1000원 이상의 금액을 입력하세요." name="reward_amount"> -->
												<div class="input-amountDiv">원</div>
											</span>
										</div>
									</div>
									<div class="alert-title-reward" id="amount-alert">
										<span id="alert-amount"></span>
									</div>
								</div>
							</div>
						</section>
						<div class="formBtnDiv">
							<button type="button" onclick="insertReward('${pro.pro_code }')">등록</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
