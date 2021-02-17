<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- spring form tag library -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page import="kr.ac.hansung.cse.controller.RecipeController"%>
<%@ page import="kr.ac.hansung.cse.service.RecipeService"%>
<%@ page import="kr.ac.hansung.cse.dao.RecipeDao"%>
<!-- <script  type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"  ></script> -->
<script src="<c:url value="/resources/jq/jquery-3.5.1.js" /> "></script>
<script src="<c:url value="/resources/js/star.js" /> "></script>
<p id="demo"></p>
<!-- <script type="text/javascript">
	/*별점 : .star-input*/
	/*출처 : http://codepen.io/naradesign/pen/zxPbOw*/
	var starRating = function() {
		var $star = $(".star-input"), $result = $star.find("output>b");

		$(document).on("focusin", ".star-input>.input", function() {
			$(this).addClass("focus");
		})

		.on("focusout", ".star-input>.input", function() {
			var $this = $(this);
			setTimeout(function() {
				if ($this.find(":focus").length === 0) {
					$this.removeClass("focus");
				}
			}, 100);
		})

		.on("change", ".star-input :radio", function() {
			$result.text($(this).next().text());
		}).on("mouseover", ".star-input label", function() {
			$result.text($(this).text());
		}).on("mouseleave", ".star-input>.input", function() {
			var $checked = $star.find(":checked");
			if ($checked.length === 0) {
				$result.text("0");
			} else {
				$result.text($checked.next().text());
			}
		});
	};

	//starRating();
	document.getElementById("demo").innerHTML = starRating();
</script> -->

<br>
<br>

<html>
<style>
.selectbox {
	position: relative;
	width: 200px; /* 너비설정 */
	border: 1px solid #999; /* 테두리 설정 */
	z-index: 1;
}

.selectbox:before { /* 화살표 대체 */
	content: "";
	position: absolute;
	top: 50%;
	right: 15px;
	width: 0;
	height: 0;
	margin-top: -1px;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
	border-top: 5px solid #333;
}

.selectbox label {
	position: absolute;
	top: 1px; /* 위치정렬 */
	left: 5px; /* 위치정렬 */
	padding: .8em .5em; /* select의 여백 크기 만큼 */
	color: #999;
	z-index: -1; /* IE8에서 label이 위치한 곳이 클릭되지 않는 것 해결 */
}

.selectbox select {
	width: 100%;
	height: auto; /* 높이 초기화 */
	line-height: normal; /* line-height 초기화 */
	font-family: inherit; /* 폰트 상속 */
	padding: .8em .5em; /* 여백과 높이 결정 */
	border: 0;
	opacity: 0; /* 숨기기 */
	filter: alpha(opacity = 0); /* IE8 숨기기 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}
</style>
<div align="center">
	<div class="container-wrapper">
		<div class="container">
			<h1>당신의 SCORE 는?</h1>
			<p class="lead">Fill the below information to update a score:</p>
			<!-- 	action="${pageContext.request.contextPath}/totalRecipe/detailTotalRecipe/scoreRegist/${recipeName}" -->
			<sf:form
				action="${pageContext.request.contextPath}/totalRecipe/detailTotalRecipe/scoreRegist/${recipeName}"
				method="post" modelAttribute="recipe">
				<!-- method="post"  -->
				<!-- 의문: action 받는 주소를  "${pageContext.request.contextPath}/totalRecipe/detailTotalRecipe" 라고 하면 안되나? 
				submit하면 보내는 주소가 와야하는데 저 주소는 scoreRegist/${recipeName} 주소로 가기에-> 이건 이론상이고 실제로 돌려보면 detailTotalRecipe/알파벳 으로 나옴
				-->

				<sf:hidden path="recipeName" />

				<div class="form-group">
					<label for="score">S C O R E</label>

					<!-- <script>
						starRating();
					</script> -->
					

					<%-- 	  <img src="<c:url value="/resources/icon/icon.png"/>" width=20 height=20> --%>
					<!-- 못먹는 재료가 있어요<i class="fas fa-clinic-medical"></i> : -1 &nbsp; &nbsp;
					&nbsp; 별로예요 <i class="far fa-angry"></i> : 1 &nbsp; &nbsp; 그럭저럭
					괜찮아요<i class="far fa-meh"></i> : 2 &nbsp; &nbsp; 보통이예요<i
						class="far fa-grin"></i> : 3 &nbsp; &nbsp; 좋아요<i
						class="far fa-laugh-squint"></i> : 4 &nbsp; &nbsp; 매우 좋아요<i
						class="far fa-grin-hearts"></i> : 5 <br> -->
					<p></p>
					<%-- 	<sf:input path="score" id="score" class="form-control" length="10" /> --%>
				<%-- 	<img src="<c:url value="/resources/icon/prohibition.png"/>" --%>
					<br> <i class="fas fa-ban"  style="color:#FF0000;font-size:30px;" ></i><font size="5"><strong> : -1</strong></font>
					&nbsp; &nbsp; &nbsp;  <i class="far fa-angry" style="font-size:30px;" ></i><font size="5"><strong> : 1 </strong></font>
					&nbsp; &nbsp; <i class="far fa-meh" style="font-size:30px;" ></i><font size="5"><strong> : 2 </strong></font>
					&nbsp; &nbsp; <i class="far fa-grin" style="font-size:30px;"></i><font size="5"><strong> : 3 </strong></font>
					&nbsp; &nbsp; <i class="far fa-laugh-squint" style="font-size:30px;"></i><font size="5"><strong> : 4 </strong></font>
					&nbsp; &nbsp; <i class="far fa-grin-hearts" style="font-size:30px;"></i><font size="5"><strong> : 5 <br></strong></font>
					<p></p>

					<br>

					<div class="selectbox">
						<label for="score">SCORE 선택</label>
						<sf:select path="score" id="score">
							<!-- operator라는 변수로 select태그 -->
					<%-- 		<sf:option value="0">Score 선택</sf:option> --%>
							<sf:option value="-1">-1</sf:option>
							<!-- selected는 하나만 할수있음. 맨처음 화면에 보여지는것 -->
							<sf:option value="1">1</sf:option>
							<sf:option value="2">2</sf:option>
							<sf:option value="3">3</sf:option>
							<sf:option value="4">4</sf:option>
							<sf:option value="5">5</sf:option>
						</sf:select>
					</div>
					<%--  <img src="<c:url value="/resources/img/grade_img.png"/>"> --%>
					<%-- 	<sf:input path="score" id="score" onclick="starRating()" /> --%>

					<!-- <span class="star-input"> <span class="input"> </span> <output
							for="star-input"> </output>
					</span> -->
					<!-- <div class="form-group">
						<label for="reply_star">별점</label>
						 <span class="star-input">
							<span class="input"> 
							
						</span> <output for="star-input">
								
							</output>
						</span>
					</div> -->

				</div>
				<br>
				<br>
				<button type="submit" class="btn btn-primary">Submit</button>
				<a
					href="<c:url value="/totalRecipe/detailTotalRecipe/${recipeName}"/>"
					class="btn btn-dark">Cancel</a>
				<!-- cancel할때는 productInventory로 보내라 -->

			</sf:form>
		</div>
	</div>

</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</html>