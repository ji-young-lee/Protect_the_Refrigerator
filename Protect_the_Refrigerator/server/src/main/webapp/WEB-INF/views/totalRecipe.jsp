<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Total Recipe</title>




<body>

	<br>
	<br>
	<br>
	<br>

		<div align="center">

			<table style="table-layout: fixed; text-align:center;">
			
				<tbody>
		
					<tr>
						<c:forEach var="recipe" items="${recipes}"  varStatus="vs">	
						<c:if test="${vs.index%5==0 }">
						</tr><tr>
						</c:if>
							
							 <td>
							<div class="centered"><a href="totalRecipe/detailTotalRecipe/${recipe.recipeName}">
							<img src="data:product/png;base64,${recipe.data}" class="mx-auto d-block" width="200px" height="200px"></a>	
							<%-- <tr></tr>
						<td>" ${recipe.recipeName } "</td> --%>
						
				
						
						${recipe.recipeName }</td></div>
						
							
						</c:forEach>
						
						</tr>
						
					
			
				</tbody>
			</table>
			<br>
		
		</div>
	</div>
</div>
</div>
</div>
</body>
</html>