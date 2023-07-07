<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 투숙기간, 객실 선택 | 조선호텔앤리조트</title>
<link rel="stylesheet" href="css/ResStyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<jsp:include page="include/header.jsp" />
		
	<div class="topArea">
		<div class="topInner">
			<h2 class="titDep1">예약하기</h2>
		</div>
	</div>

	<%-- <form class="res_cont" id="step0Form" name="step0Form" method="post" 
			action="<%=request.getContextPath()%>/step1.do">
		<input type="hidden" name="resIn" id="resIn" value="0">				
		<input type="hidden" name="resOut" id="resOut" value="0">
		<input type="hidden" name="resNight" id="resNight" value="0">				
		<input type="hidden" name="resAdult" id="resAdult" value="1">								
		<input type="hidden" name="resChild" id="resChild" value="0">
		<input type="hidden" name="resInYoil" id="resInYoil" value="">
		<input type="hidden" name="resOutYoil" id="resOutYoil" value=""> --%>

			<div class="inner">
				<ul class="dateSelect">		
					<li>
						<strong class="listTit">객실정보 및 요금</strong>	
						<p class="resGuide">
							객실 정보 및 요금 정보 들어가는 칸
							<br/>						
							한줄 뒤 정보 칸	
						</p>
					</li>			
					<li>
						<strong class="listTit">객실 이용 시 확인사항</strong>	
						<p class="resGuide">
							* 청결한 공간임대를 제공하기 위해서 입,퇴실 시간은 꼭 지켜주세요.
							<br/>
							* 실내에서는 절대 금연입니다.
							<br/>
							* 반려동물은 숙소 내 입실이 제한됩니다.
							<br/>
							* 예약인원 외의 인원은 입실이 금지됩니다.
							<br/>
							* 화재의 위험이 있는 촛불, 폭죽 등의 위험물 사용은 삼가 해주세요. 화재 발생으로 인한 손해를 배상하시게 됩니다.
							<br/>
							* 숙소 내 기물 및 비품 등 파손 시 새제품으로 교체하는 비용을 배상하셔야 하오니, 주의해서 다뤄주시길 바랍니다.
							<br/>
							* 아름다운 여행으로 기억될 수 있도록 서로에게 방해가 되는 행위나 고성방가 등은 삼가하여 주시길 바랍니다.
							<br/>
							* 이용수칙을 지키지 않을 경우 부득이 퇴실조치 될 수 있으니, 밝고 쾌적한 환경을 만들기 위해 적극적인 협조 부탁드립니다.
							<br/>
							* 수영장 물은 절대 트시면 안되며, 스파는 사용 후 반드시 물을 꺼주시기 바랍니다.
							
													
						</p>
					</li>			
					<%-- <li class="selectResDate">
						<strong class="listTit">객실 이용 시 확인사항</strong>
						<em class="intValue" id="dateText"></em>
						<button type="button" class="dToggleBtn"><i class="fas fa-chevron-down"></i></button>
						<div class="dateTexts" id="dateTexts">
							<span id="resInView"></span>&nbsp;<span id="in_Yoil"></span>&nbsp;-&nbsp;
							<span id="resOutView"></span>&nbsp;<span id="out_Yoil"></span>
							<span id="nightResult" class="nightResult"></span>
						</div>	
						<div class="dToggleInner">
							<div id="datepicker"></div>
						</div>
					</li>				
					<li class="personCount">
						<strong class="listTit">인원 추가</strong>
						<button type="button" class="pToggleBtn"><i class="fas fas fa-chevron-down"></i></button>
						<div class="countText" id="countText">
							성인 <div id="resultA" style="display: inline">1</div>명
							<span class="countbefore"></span>어린이 <div id="resultC" style="display: inline">0</div>명
						</div>
						
						
						<div class="pToggleInner"  style="display: none">
							<div class="count">
								<button type="button" onclick="count('minus')">
									<i class="fas fa-minus" aria-hidden="true"></i>
								</button>
								<span class="count_span">성인 <em id="result">1</em></span>
								<button type="button" onclick="count('plus')">
									<i class="fas fa-plus" aria-hidden="true"></i>
								</button>
							</div>
							<div class="count">
								<button type="button" onclick="count2('minus')">
									<i class="fas fa-minus" aria-hidden="true"></i>
								</button>
								<span class="count_span">어린이 <em id="result2">0</em> </span>
								<button type="button" onclick="count2('plus')" value="+">
									<i class="fas fa-plus" aria-hidden="true"></i>
								</button>
							</div>
						</div>
					</li> --%>
				</ul>
				<div class="res_submit_area">
					<a href="https://map.naver.com/v5/entry/place/1369943741?lng=126.6225143&lat=37.6445103&placePath=%2Fhome%3Fentry=plt&c=15,0,0,0,dh">
					<input type="submit" class="res_submit" value="예약 하기">
					</a>
				</div>
				
			</div>
		
	</form>
	<script type="text/javascript" src="js/cal.js"></script>
	<script type="text/javascript" src="js/res_step0.js"></script>

	<jsp:include page="include/footer.jsp" />

</body>
</html>