<!-- 냉장고 속 보여주는 페이지  -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <img src="${pageContext.request.contextPath }/resources/paris.jpg" class="mx-auto d-block , img-thumbnail"  alt="Cinque Terre" >
 --%>



<html>
<head>

<style>

.ourcustom1 {
	background-color: #CCE1FF;
	padding: 20px 60px 40px;
	margin-top: 10px;
}
</style> 
</head>

<link
	href="https://fonts.googleapis.com/css2?family=Oswald&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<body>

<div class="ourcustom1">
<div class="row" >
	<div class="col-md-6">
<div align="center">

	<div style="font-family: 'Oswald', sans-serif;">
		<h2>In Refrigerator</h2>
	</div>
	<br>
	
	
		
			<c:forEach var="product" items="${photo }">
				
					<%-- <td><img src="data:product/png;base64,${product.data}"></td> --%>
					<img src="data:product/png;base64,${product.analyzedData}"
						class="mx-auto d-block , img-thumbnail" width="550px">


				
			</c:forEach>

		
	
	
	</div>
		</div>
		<div class="col-md-6">
<div align="center">
	<br>
	
		<div style="font-family: 'Black Han Sans', sans-serif;">
			<h2>유통기한</h2>
		</div>
		<table border="1" style="text-align: center;">

			
	
				<c:forEach var="product" items="${products }">

					<tr>

						<td><strong> 상품 식별 코드 : </strong> ${product.count }</td>
						</tr>
						<tr>
						<td><strong>상품정보: </strong>${product.foodName }</td>
						</tr>
						<tr>
						<td><strong>입고날짜 : </strong> ${product.inString }</td>
						</tr>
						<tr>
						<td><strong>유통기한: </strong>${product.finish3 }까지</td>
						</tr>
						<tr>
						<td><strong>섭취 기한 :</strong> ${product.realShelf }일남았습니다</td>
					</tr>
				</c:forEach>

			

		</table>
	
	
	<br>
	<br>
	</div>
	</div>
	</div>
	</div>
</body>

</html>



