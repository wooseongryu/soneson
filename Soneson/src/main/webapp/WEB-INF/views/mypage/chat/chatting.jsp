<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="origin-trial"
    content="AwnOWg2dzaxHPelVjqOT/Y02cSxnG2FkjXO7DlX9VZF0eyD0In8IIJ9fbDFZGXvxNvn6HaF51qFHycDGLOkj1AUAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY5NTE2Nzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">

<!-- 손에손 타이틀 아이콘 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
<title>손에손</title>
<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>

<script type="text/javascript">

const chatbox = document.getElementById('chatbox');
const messageInput = document.getElementById('messageInput');
const sendButton = document.getElementById('sendButton');

// WebSocket 연결
const socket = new WebSocket('ws://localhost:8081/chatting');

// 서버로부터 메시지 받았을 때 처리
socket.onmessage = function(event) {
    const message = event.data;
    chatbox.innerHTML += `<p>${message}</p>`;
    chatbox.scrollTop = chatbox.scrollHeight;
};

// 전송 버튼 클릭 이벤트 처리
sendButton.onclick = function() {
    const message = messageInput.value;
    socket.send(message);
    messageInput.value = '';
};

// Enter 키 입력 이벤트 처리
messageInput.addEventListener('keyup', function(event) {
    if (event.key === 'Enter') {
        sendButton.click();
    }
});

</script>

<style type="text/css">

	.style__PartnerName {
		font-size: 17px;
		font-weight: bolder;
		
	}
	
	.style__Description {
		font-size: 15px;
		color: gray;
	}
	
	textarea{
	    margin-top: 15px;
	}
	
	.jMSa-dF {
	    position: fixed;
	    bottom: calc(env(safe-area-inset-bottom));
	    width: 100%;
	    padding: 6px 16px;
	    background-color: rgb(255, 255, 255);
	}
	
	.fAyvnV {
	    border: none;
	    resize: none;
	    overflow-y: auto;
	    padding: 8px 40px 10px 44px;
	    border-radius: 20px;
	    background: rgb(240, 240, 240);
	    color: rgb(61, 61, 61);
	  
	}
	
	.hOKVVV__submit {
		width: 30px;
		border: none;
		margin-top: 10px;
	}
	
	
}				

</style>

</head>
<body>

<div id="react-view" class="tbb-only-ff">
	<div class="ScrollTop__ScrollTopBtnWrapper-sc-679kj0-1 dABHQj">
		<div class="ScrollTop__StyledIcon-sc-679kj0-0 ijEXUb">
			<g fill-rule="evenodd" id="Page-1" stroke="none">
				<g id="jump-to-top" transform="translate(-1.000000, 0.000000)">
					<path d="M12.006,5.987 L22.75,16.437 C22.9,16.587 23,16.837 23,17.087 C23,17.338 22.9,17.587 22.7,17.737 C22.35,18.087 21.75,18.087 21.35,17.737 L12.006,8.587 L2.611,17.737 C2.261,18.087 1.662,18.087 1.262,17.737 C0.912,17.387 0.912,16.787 1.262,16.437 L12.006,5.987 L12.006,5.987 Z M22.175,0 C22.631,0 23,0.37 23,0.825 L23,0.877 C23,1.332 22.63,1.702 22.175,1.702 L1.825,1.702 C1.369,1.702 1,1.332 1,0.877 L1,0.825 C1,0.369 1.37,0 1.825,0 L22.175,0 Z" id="Shape">
					</path>
				</g>
			</g>
		</div>
	</div>
      
	<div class="style__MessageThreadV2Container-ycnsos-0 kJLTuj">
		<div class="style__MessageThreadHeaderContainer-sc-1pbo5fq-0 nZLfM">
			<div class="style__MessageThreadHeaderWrapper-sc-1pbo5fq-1 ejjycN">
				<div class="style__PartnerImageWrapper-sc-1pbo5fq-2 dkpPBt">
<!-- 					<img src="" alt="partner image" class="style__PartnerImage-sc-1pbo5fq-3 dTzOVH"> -->
				</div>
<!-- 				<span class="style__WarrantyInfoTitle-sc-1pbo5fq-4 gtRqjf">창작자 이름</span> -->
<!-- 				<hr> -->
			</div>
		</div>
		
		<div class="style__PartnerMessageContentsContainer-ycnsos-1 bBuFRk">
			<div data-test-id="virtuoso-scroller" data-virtuoso-scroller="true" tabindex="0" style="outline: none; overflow-y: auto; position: relative; overscroll-behavior: contain; height: 752px;">
				<div data-viewport-type="element" style="width: 100%; height: 100%; position: absolute; top: 0px;">
					<div>
						<div class="style__PartnerInformationContainer-sc-1fy8oty-0 MHpOi">
							<div class="style__PartnerImageWrapper-sc-1fy8oty-1 cVAYyM" align="center">
								<img src="https://tumblbug-upi.imgix.net/0684e096-c98d-43bd-aa2c-d7440a3ef116.jpg?ixlib=rb-1.1.0&amp;w=100&amp;h=125&amp;auto=format%2Ccompress&amp;fit=facearea&amp;facepad=2.0&amp;ch=Save-Data&amp;mask=ellipse&amp;s=edc5fb287f77a477286c5e42747aee4b"
								alt="partner image" class="style__PartnerImage-sc-1fy8oty-2 gpRiKM">
								<p class="style__PartnerName">창작자 이름</p>
								<p class="style__Description">메시지를 남겨주시면<br>창작자님이 확인하시는 대로 답변을 드립니다.</p>
							</div>
						</div>
					</div>
				
					<div data-test-id="virtuoso-item-list" style="box-sizing: border-box; padding-top: 0px; padding-bottom: 0px; margin-top: 0px;">
					</div>
				</div>
			</div>
		
			<!-- 파일 업로드 아이콘 -->
			<div class="style__MessageFormContainer-sc-5iwu9o-0 jMSa-dF">
				<label for="camera-select" class="style__CameraLabel-sc-5iwu9o-1 btWLeF">
					<input type="file" id="camera-select" accept="image/png, image/jpeg, image/jpg, image/gif" multiple="" class="style__CameraInput-sc-5iwu9o-2 jcBCvO">
						<div name="camera-filled" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV__camera">
							<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 28 28" fill="none">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M8.08125 5.98484C8.20062 5.55079 8.59529 5.25 9.04546 5.25H18.9545C19.4047 5.25 19.7994 5.55079 19.9187 5.98484L20.6792 8.75H23.5C24.0523 8.75 24.5 9.19772 24.5 9.75V21.1667C24.5 21.719 24.0523 22.1667 23.5 22.1667H4.5C3.94772 22.1667 3.5 21.719 3.5 21.1667V9.75C3.5 9.19772 3.94772 8.75 4.5 8.75H7.32083L8.08125 5.98484ZM16.8 14.5833C16.8 16.1297 15.5464 17.3833 14 17.3833C12.4536 17.3833 11.2 16.1297 11.2 14.5833C11.2 13.0369 12.4536 11.7833 14 11.7833C15.5464 11.7833 16.8 13.0369 16.8 14.5833ZM18.6667 14.5833C18.6667 17.1607 16.5773 19.25 14 19.25C11.4227 19.25 9.33333 17.1607 9.33333 14.5833C9.33333 12.006 11.4227 9.91667 14 9.91667C16.5773 9.91667 18.6667 12.006 18.6667 14.5833Z" fill="#6D6D6D">
								</path>
							</svg>
							<!-- 메세지 업로드 아이콘 -->
							<textarea placeholder="메시지 보내기..." class="style__MessageTextarea-sc-5iwu9o-3 fAyvnV"></textarea>
				 				<button class="style__MessageSendButton-sc-5iwu9o-4 dbivrG">
				 					<div name="message-send-disabled" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV__submit">
				 						<svg viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
				 							<circle cx="16" cy="16" r="16" fill="white"></circle>
				 							<path fill-rule="evenodd" clip-rule="evenodd" d="M9.33268 15.6773L15.9993 9.75L22.666 15.6773L21.2829 16.9494L16.8918 12.7424L16.8918 22.25L15.1656 22.25L15.1656 12.6861L10.7158 16.9494L9.33268 15.6773ZM16.8507 22.2083L16.8507 22.2087L15.2067 22.2087L15.2067 12.5896L10.7153 16.8929L9.39416 15.6778L9.39435 15.6776L10.7153 16.8926L15.2068 12.5893L15.2068 22.2083L16.8507 22.2083ZM16.8507 12.6459L16.8507 12.6456L21.2835 16.8926L22.6044 15.6776L22.6045 15.6778L21.2834 16.8929L16.8507 12.6459Z" fill="#9E9E9E">
				 							</path> 
				 						</svg> 
				 					</div> 
				 				</button> 
						</div>
				</label>
			</div>
		</div>
	</div>
	<div class="common-Layer tbb">
	</div>
</div>


<!-- <script type="application/javascript" src="https://d2om2e6rfn032x.cloudfront.net/wpa/bundle.app.858e1b77f5d30fd90b67.js"></script>  -->
<!-- <script>  -->
<!--    	if (!(window.navigator.userAgent.match(/MSIE|Internet Explorer|Trident/i))) {  -->
<!--   		const s = document.createElement('script');  -->
<!--    		s.type = 'text/javascript';  -->
<!--    		s.src = 'https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js';  -->
<!--    		s.charset = 'UTF-8';  -->
<!--    		const x = document.querySelector('body'); -->
<!--    		x.appendChild(s, x);  -->
<!--    	}  -->
<!-- </script>  -->
<!-- <script type="text/javascript" src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js" charset="UTF-8"></script>  -->
    
  
<div id="ch-plugin" class="notranslate">
	<div id="ch-plugin-entry">
		<div style="display: block !important;">
		</div>
	</div>
	<div id="ch-plugin-script" style="display:none;">
		<iframe id="ch-plugin-script-iframe" title="Channel chat"
		style="position:relative!important; height:100%!important; width:100%!important; border:none!important;">
		</iframe>
	</div>
	<style data-styled="active" data-styled-version="5.3.9"></style>
</div>

<div id="criteo-tags-div" style="display: none;">
</div>

<script type="text/javascript" id="" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" id="" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript" id="">(function(a,e,b,f,g,c,d){a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};c=e.createElement(f);c.async=1;c.src="https://www.clarity.ms/tag/"+g;d=e.getElementsByTagName(f)[0];d.parentNode.insertBefore(c,d)})(window,document,"clarity","script","i2k3prusn1");</script>  
<script type="text/javascript" id="">if(!wcs_add)var wcs_add={};wcs_add.wa="s_1e299d605425";if(!_nasa)var _nasa={};wcs.inflow();wcs_do(_nasa);</script> 
<script type="text/javascript" id="">kakaoPixel("6239788973309080235").pageView();</script>
<img src="https://t.co/1/i/adsct?bci=4&amp;eci=3&amp;event=%7B%7D&amp;event_id=761052b4-faba-444e-89d8-b2f7e9a064eb&amp;integration=gtm&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=86088519-e997-4faa-956f-c9ae52a80ce9&amp;tw_document_href=https%3A%2F%2Ftumblbug.com%2Fmessages%2Fnew%3Fproject_id%3Dab04b827-47a3-4114-bbaf-6f7e63afb3a4&amp;tw_iframe_status=0&amp;txn_id=o4eav&amp;type=javascript&amp;version=2.3.29" height="1" width="1" style="display: none;">
<img src="https://analytics.twitter.com/1/i/adsct?bci=4&amp;eci=3&amp;event=%7B%7D&amp;event_id=761052b4-faba-444e-89d8-b2f7e9a064eb&amp;integration=gtm&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=86088519-e997-4faa-956f-c9ae52a80ce9&amp;tw_document_href=https%3A%2F%2Ftumblbug.com%2Fmessages%2Fnew%3Fproject_id%3Dab04b827-47a3-4114-bbaf-6f7e63afb3a4&amp;tw_iframe_status=0&amp;txn_id=o4eav&amp;type=javascript&amp;version=2.3.29" height="1" width="1" style="display: none;">
<img src="https://t.co/1/i/adsct?bci=4&amp;eci=4&amp;event=%7B%7D&amp;event_id=31087796-d40c-47e2-9c70-89b6b8784ab7&amp;integration=gtm&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=86088519-e997-4faa-956f-c9ae52a80ce9&amp;tw_document_href=https%3A%2F%2Ftumblbug.com%2Fmessages%2Fnew%3Fproject_id%3Dab04b827-47a3-4114-bbaf-6f7e63afb3a4&amp;tw_iframe_status=0&amp;txn_id=tw-o4eav-odm20&amp;type=javascript&amp;version=2.3.29" height="1" width="1" style="display: none;">
<img src="https://analytics.twitter.com/1/i/adsct?bci=4&amp;eci=4&amp;event=%7B%7D&amp;event_id=31087796-d40c-47e2-9c70-89b6b8784ab7&amp;integration=gtm&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=86088519-e997-4faa-956f-c9ae52a80ce9&amp;tw_document_href=https%3A%2F%2Ftumblbug.com%2Fmessages%2Fnew%3Fproject_id%3Dab04b827-47a3-4114-bbaf-6f7e63afb3a4&amp;tw_iframe_status=0&amp;txn_id=tw-o4eav-odm20&amp;type=javascript&amp;version=2.3.29" height="1" width="1" style="display: none;">
<iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"></iframe>

	
</body>
</html>