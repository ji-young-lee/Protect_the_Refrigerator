package kr.ac.hansung.cse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.cse.model.Recipe;

@Repository
public class RecommendDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {

		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Recipe> getRecipes() { // totalRecipe.jsp

		//String sqlStatement = " select * from recommendRecipe where email='cjfwoqkr0105@naver.com'";
	//	String sqlStatement = " select * from recommendRecipe where email='jongchangph@naver.com'";
		String sqlStatement = " select * from recommendRecipe where email='jongchangph@naver.com'";
	//	String sqlStatement = " select * from recommendRecipe";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Recipe>() {

			@Override
			public Recipe mapRow(ResultSet rs, int rowNum) throws SQLException {

				Recipe recipe = new Recipe();

				// String data = new String(rs.getBytes("data"));

				// recipe.setData(data);
				recipe.setRecipeName(rs.getString("recipeName"));
				// recipe.setProcess(rs.getString("process"));
				// recipe.setRecipeTime(rs.getString("recipeTime"));
				// recipe.setDifficulty(rs.getString("difficulty"));
				// recipe.setClassification(rs.getString("classification"));
				// recipe.setMethod(rs.getString("method"));
				// recipe.setFoodName(rs.getString("foodName"));
				// recipe.setMeterage(rs.getString("meterage"));

				return recipe;

			}

		});

	}

	public List<Recipe> getData() {
		String sqlStatement = "select * from recipe where recipeName= any(select recipeName from recommendRecipe where email='jongchangph@naver.com')";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Recipe>() {

			@Override
			public Recipe mapRow(ResultSet rs, int rowNum) throws SQLException {
				Recipe recipe = new Recipe();

				String data = new String(rs.getBytes("data"));

				recipe.setData(data);
				recipe.setRecipeName(rs.getString("recipeName"));
			
				return recipe;
				
			}
		});
	}

	public List<Recipe> getProductById(String recipeName) {

		String sqlStatement = "select * from recipe where recipeName=?";

		// 하나의 객체를 읽어들이는 것이기에 query가 아닌 queryForObject . new Object[] {id}는
		// ?에해당되는placeholder를 지정해줘야하기에 . 3번째인자 rowmappper는 존나김
		return jdbcTemplate.query(sqlStatement, new Object[] { recipeName }, new RowMapper<Recipe>() {

			@Override
			public Recipe mapRow(ResultSet rs, int rowNum) throws SQLException { // mapRow라고하는 메소드 만들어짐.여기서 레코드를 객체로 //
				
				Recipe recipe = new Recipe();
				
				String process = new String(rs.getString("process"));
				ArrayList<String> list = new ArrayList<String>();
				String[] splitStr = process.split("\\$");

				for (int i = 0; i < splitStr.length; i++) {

					list.add(splitStr[i]);
				
				}
			
				List<String> splitList = Arrays.asList(splitStr);
			
				recipe.setSplitList(splitList);
		
				for (String processSplit : list) {
					recipe.setProcessSplit(processSplit);
				}
				

				// 앞에 lombok을 사용해서 getter,setter만들어놓았음
				

				String data = new String(rs.getBytes("data"));

				recipe.setData(data);
				recipe.setRecipeName(rs.getString("recipeName"));
				recipe.setProcess(process);
				recipe.setRecipeTime(rs.getString("recipeTime"));
				recipe.setDifficulty(rs.getString("difficulty"));
				recipe.setClassification(rs.getString("classification"));
				recipe.setMethod(rs.getString("method"));
				// recipe.setFoodName(rs.getString("foodName"));
				// recipe.setMeterage(rs.getString("meterage"));

				return recipe;

			}

		});

	}

	public List<Recipe> getIngredientsById(String recipeName) {


		String sqlStatement = "select * from ingredients where recipeName=?";

		return jdbcTemplate.query(sqlStatement, new Object[] { recipeName }, new RowMapper<Recipe>() {

			@Override
			public Recipe mapRow(ResultSet rs, int rowNum) throws SQLException { 

				Recipe recipe = new Recipe();

				String foodName = new String(rs.getString("foodName"));

				String meterage = new String(rs.getString("meterage"));
				
				recipe.setFoodName(foodName);
			
				recipe.setMeterage(meterage);

				return recipe;

			}
		});		
	}
	
	
	public List<Recipe> getScoreById(String recipeName) {
		String sqlStatement = "select * from recipeScore where email='4' and recipeName=?";

		// 하나의 객체를 읽어들이는 것이기에 query가 아닌 queryForObject . new Object[] {id}는
		// ?에해당되는placeholder를 지정해줘야하기에 . 3번째인자 rowmappper는 존나김
		return jdbcTemplate.query(sqlStatement, new Object[] { recipeName }, new RowMapper<Recipe>() {

			@Override
			public Recipe mapRow(ResultSet rs, int rowNum) throws SQLException { // mapRow라고하는 메소드 만들어짐.여기서 레코드를 객체로 //

				Recipe recipe = new Recipe();

				recipe.setRecipeName(rs.getString("recipeName"));

				recipe.setScore(rs.getInt("score"));

				return recipe;

			}

		});

	}

}
