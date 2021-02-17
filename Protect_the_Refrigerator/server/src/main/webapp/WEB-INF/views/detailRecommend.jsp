<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Total Recipe</title>
</head>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gamja+Flower&display=swap" rel="stylesheet">
<body>

	<br>

	<div class="container-wrapper">
	<div class="container">
	<div class="row" >
	<div class="col-md-6">
		<div align="left">

			<BR>

<br><br>

			<c:forEach var="recipe" items="${detailrecipes}">
				
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

				<tr>
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





			</c:forEach>
		</table>
	</div>
</div>
</div>
</div>
	<br>
	<br>
	<br>
	<br>
</body>
</html>