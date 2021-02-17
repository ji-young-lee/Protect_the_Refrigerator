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
<div align="center">

	<div style="font-family: 'Oswald', sans-serif;">
		<h2>In Refrigerator</h2>
	</div>
	<br>
	<table>
	
		<tbody>
			<c:forEach var="product" items="${photo }">
				<tr>
					<%-- <td><img src="data:product/png;base64,${product.data}"></td> --%>
					<td><img src="data:product/png;base64,${product.analyzedData}"
						class="mx-auto d-block , img-thumbnail" width="550px"></td>


				</tr>
			</c:forEach>

		</tbody>
	
	</table>
	

	<br>
	
		<div style="font-family: 'Black Han Sans', sans-serif;">
			<h2>유통기한</h2>
		</div>
		<table  style="text-align: center;">

			<thead>
				<!-- <tr><th>사진</th> -->
				<th>상품식별코드</th><th></th><th></th><th></th><th></th>
				<th>상품정보</th><th></th><th></th><th></th><th></th>
				<th>입고날짜</th><th></th><th></th><th></th><th></th>
				<th>유통기한</th><th></th><th></th><th></th><th></th>
				<th>섭취 기한</th><th></th><th></th><th></th><th></th>

			</thead>

			<tbody>
	
				<c:forEach var="product" items="${products }">

					<tr>

						<td>${product.count }</td><td></td><td></td><td></td><td></td>
						<td>${product.foodName }</td><td></td><td></td><td></td><td></td>
						<td>${product.inString }</td><td></td><td></td><td></td><td></td>
						<td>${product.finish3 }까지</td><td></td><td></td><td></td><td></td>
						<td>${product.realShelf }일남았습니다</td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
					<td></td></tr><tr><td></td></tr>
				</c:forEach>

			</tbody>

		</table>
	
	
	<br>
	<br>
	</div>
	</div>
</body>

</html>



