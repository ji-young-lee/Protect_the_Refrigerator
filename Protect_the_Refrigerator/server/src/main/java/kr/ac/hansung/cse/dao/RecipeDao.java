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
public class RecipeDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {

		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Recipe> getRecipes() { // totalRecipe.jsp

		String sqlStatement = " select * from recipe";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Recipe>() {

			@Override
			public Recipe mapRow(ResultSet rs, int rowNum) throws SQLException {

				Recipe recipe = new Recipe();

				String data = new String(rs.getBytes("data"));
				
				
				recipe.setData(data);
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
				String[] splitStr = process.split("\\$");  //특수문자 앞에는 \\넣어야 split됨

				for (int i = 0; i < splitStr.length; i++) {

					list.add(splitStr[i]);
					// String tmp = list.get(i);
					// recipe.setTmp(tmp);
					// request.setAttribute("tmp",tmp);
					// System.out.println(tmp);
				//	System.out.println(splitStr[i]);
					// System.out.println(list.get(i)); //특정 index값 추출
				//	String element = (String) list.get(i);
				//	recipe.setElement(element);
					// recipe.setList(list);
					// recipe.setSplitStr(splitStr);
					// String tmp = splitStr[i];
					// recipe.setTmp(tmp);
				}
			//	ArrayList<String> mNewList = new ArrayList<String>(Arrays.asList(splitStr));
			//	ArrayList<String> splitList = new ArrayList<>(Arrays.asList(splitStr));
				List<String> splitList = Arrays.asList(splitStr);
			//	Consumer<String> lambda= item -> System.out.println(item);
			//	splitList.forEach(lambda);
				//	System.out.println(splitList);
				recipe.setSplitList(splitList);
		//		for(String e: splitList) {
		//			recipe.setE(e);
		//			System.out.println(e);
				//	session.setAttribute("e", e);  					
		//		}
		//		
			//	for(String s: mNewList) {
				//	System.out.println(s);
			//		recipe.setS(s);
				//	recipe.setSplitStr(splitStr);
			//		recipe.setMNewList(mNewList);
			//	}
				for (String processSplit : list) {

					// session.getAttribute(processSplit);
					// Creat constant 'processSplit' in type 'RecipeDao'
				//	System.out.println(processSplit);
					
					recipe.setProcessSplit(processSplit);
				}
			

				// 앞에 lombok을 사용해서 getter,setter만들어놓았음

				String data = new String(rs.getBytes("data"));

				recipe.setData(data);
				recipe.setRecipeName(rs.getString("recipeName"));

				recipe.setProcess(process);
				recipe.setList(list);
				// recipe.setSplitStr(splitStr);

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
		//String sqlStatement = "select * from recipeScore where  recipeName=?";
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


	public boolean getScores(Recipe recipe) {

		int score = recipe.getScore();
		String recipeName = recipe.getRecipeName();
		/*
		 * String data = recipe.getData(); String process = recipe.getProcess(); String
		 * recipeTime = recipe.getRecipeName(); String difficulty =
		 * recipe.getDifficulty(); String classification = recipe.getClassification();
		 * String method = recipe.getMethod();
		 */

		String sqlStatement = "update recipeScore set score=? where email='4' and recipeName =? ";
	//	String sqlStatement = "update recipeScore set score=? where  recipeName =? ";
		return (jdbcTemplate.update(sqlStatement, new Object[] { score, recipeName }) == 1);

	}

	/*
	 * public boolean getScores(Recipe recipe) {
	 * 
	 * int score = recipe.getScore(); String recipeName = recipe.getRecipeName();
	 * String sqlStatement = "update recipeScore set score=? where recipeName =? ";
	 * return (jdbcTemplate.update(sqlStatement, new Object[] { score, recipeName })
	 * == 1); }
	 */

	public List<Recipe> getDetailRecipes() {

		String sqlStatement = " select * from recipe where recipeName";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Recipe>() {

			@Override
			public Recipe mapRow(ResultSet rs, int rowNum) throws SQLException {

				Recipe recipe = new Recipe();

				String data = new String(rs.getBytes("data"));
				String process = new String(rs.getString("process"));

				recipe.setData(data);
				recipe.setRecipeName(rs.getString("recipeName"));
				recipe.setRecipeTime(rs.getString("recipeTime"));
				recipe.setDifficulty(rs.getString("difficulty"));
				recipe.setClassification(rs.getString("classification"));
				recipe.setMethod(rs.getString("method"));
				recipe.setProcess(process);

				// recipe.setFoodName(rs.getString("foodName"));
				// recipe.setMeterage(rs.getString("meterage"));

				return recipe;

			}

		});

	}

	

}
