package kr.ac.hansung.cse.model;

import java.util.List;
import java.util.ArrayList;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class Recipe {

	private String recipeName;
	
	private String data;
	
	private String process;
	private String element;
	private List<String> splitStr;
	private ArrayList<String> mNewList;
	private List<String> list;
	private List<String> splitList;
//	private String list;
	//private String processa;
	private String processSplit;
	private String s;
	private String e;
	
	private String recipeTime;
	
	private String difficulty;
	
	private String classification;
	
	private String method;
	
	private String foodName;
	
	private String meterage;
	
	private int score;


	
	
}
