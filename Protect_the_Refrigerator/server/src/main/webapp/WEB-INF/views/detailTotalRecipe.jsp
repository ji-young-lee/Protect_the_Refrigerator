<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%@page import="kr.ac.hansung.cse.dao.RecipeDao"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.hansung.cse.model.Recipe"%>

<%@ page import="kr.ac.hansung.cse.controller.RecipeController"%>
<%@ page import="kr.ac.hansung.cse.service.RecipeService"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Total Recipe</title>
<script src="<c:url value="/resources/jq/jquery-3.5.1.js" /> "></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/star.js" /> "></script>

<!-- <script type="text/javascript">
window.onload=function(){
	document.getElementById("btn").onclick=startRating;
}
</script> -->

</head>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gamja+Flower&display=swap" rel="stylesheet">
<body>

	<%-- <%
List<String> list =  (ArrayList<String>)session.getAttribute("list");
for(String processSplit: list) {
	 
	//session.getAttribute(processSplit);					
//	recipe.setProcessSplit(processSplit); //Creat constant 'processSplit' in type 'RecipeDao'
	System.out.println(processSplit); 
  }
%> --%>
	
		
	
	<br>
	<div class="container-wrapper">
	<div class="container">
	<div class="row" >
	<div class="col-md-6">
		<div align="left">

			<BR>

<br><br>
			<c:forEach var="recipe" items="${detailrecipes}">
				<%-- <tr>
					<td><img src="data:product/png;base64,${recipe.data}"
						class="mx-auto d-block" width="400px"></td>
				</tr> --%>

				<img src="data:product/png;base64,${recipe.data}"
					class="mx-auto d-block" width="400px">
			</c:forEach>
		</div>
		</div>
		<div class="col-md-6">
		<br>
			<table >
			<!-- <table style="text-align: center;"> -->
				<c:forEach var="recipe" items="${detailrecipes}"  >
					<tr >
						<td><div style="font-family: 'Do Hyeon', sans-serif;
font-family: 'Gamja Flower', cursive;"><h1 >${recipe.recipeName}</h1></div></td>
					</tr>
					<tr>
						<td><strong>요리 방식 :</strong> ${recipe.method}</td>
					</tr>
					<tr>
						<td><strong>주재료 분류 :</strong> ${recipe.classification}</td>
					</tr>
					<tr>
						<td><strong>소요 시간 :</strong> ${recipe.recipeTime}</td>
					</tr>
					<tr>
						<td><strong>난이도 :</strong> ${recipe.difficulty}</td>
					</tr>
<tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr>
					<tr>
						<td><strong>재료 :</strong></td>
					</tr>

					<tr>
						<td><c:forEach var="ingredient" items="${ingredients}">
						${ingredient.foodName}
							(${ingredient.meterage}) ,
				</c:forEach></td>
					</tr>
<tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr>
					<tr>
						<td><strong>조리 방법:</strong></td>
					</tr>
					<c:forEach var="split" items="${recipe.splitList}">
						<tr>
							<%-- <%
				for(int i=0; i<tmp.length; i++){
					
				}
				%> --%>
							<td>${split}</td>
						</tr>
					</c:forEach>
				</c:forEach>
<tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr>
				<c:forEach var="score" items="${scores}">
					
					<tr>
						<td><strong>내 점수 :</strong> ${score.score} 점</td>
					</tr>
<tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr>
					<tr>
						<%-- 	<td>내 점수 수정하기 <a
						href=" <c:url value="scoreRegist/${score.recipeName}"/> "
						class="btn-sm btn-primary" onclick="starRating();" >수정하기</a></td> --%>
						<td><strong>내 점수 수정하기 </strong><a
							href=" <c:url value="scoreRegist/${score.recipeName}"/> "
							class="btn-sm btn-primary" onClick="startRating()">수정하기</a></td>
					</tr>

				</c:forEach>

				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr><tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td><a href=" <c:url value="/totalRecipe"/> "
						class="btn-sm btn-primary">전체레시피 보러가기</a></td>
				</tr>

			</table>
	</div>
</div>
</div>
</div>

<!-- </div> -->
	<br>
	<br>
	<br>
	<br>
</body>
</html>