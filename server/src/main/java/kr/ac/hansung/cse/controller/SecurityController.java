package kr.ac.hansung.cse.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class SecurityController {

	@RequestMapping("/logins") //requestmapping���� ���ؼ� /product����ϴ� url�� ������ request�� �����ԵǸ� �� �޼ҵ尡 �����
	public String getProducts(Model model) {
		
		return "logins"; //view's logical name. products.jsp���Ϸ� �Ѱ��ָ� �Ǹ��� �� �信�� �𵨷� ����� products�� ���� ������ָ��
	}
}