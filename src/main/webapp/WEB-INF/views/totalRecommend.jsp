<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Total Recipe</title>
<style>
.border {
	border-style: double 2px;
	
	border-top-width: thick;
	border-bottom-width: thick;
	border-left-width: thick;
	border-right-width: thick;
	border-radius: 10px;
	
	
.jb-wrap {
				width: 40%;
				margin: 40px auto;
				border: 1px solid #000000;
			}

}
	　
}



</style>
</head>
<body>
    <div class="jb-wrap">
	<div class="wrap1">
		<br> <br> <br> <br>
		<div class="border">
			<div align="left">

				<table
					style="width: 90%; height: 100px; margin: auto; text-align: center;">
					<tbody>
						<p>
						<tr>
							<c:forEach var="recipe" items="${data}">



								<td><a
									href="totalRecommend/detailRecommend/${recipe.recipeName}">
										<img src="data:product/png;base64,${recipe.data}"
										class="mx-auto d-block" width="200px">
								</a></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</c:forEach>
						</tr>
						<tr>

							<c:forEach var="recipe" items="${recipes}">
								<td>${recipe.recipeName }</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</c:forEach>

						</tr>
						</p>
					</tbody>
				</table>
				<br>
			</div>
		</div>
</div>
	</div>
</body>
</html>