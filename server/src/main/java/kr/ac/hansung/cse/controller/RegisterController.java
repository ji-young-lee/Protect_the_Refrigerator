
/*
 * package kr.ac.hansung.cse.controller;
 * 
 * import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * //import kr.ac.hansung.cse.model.Register; //import
 * kr.ac.hansung.cse.service.RegisterService;
 * 
 * @Controller public class RegisterController {
 * 
 * @Autowired // private RegisterService registerService;
 * 
 * @RequestMapping("/registers") public String getProducts(Model model) {
 * 
 * 
 * 
 * // List<Register> registers =registerService.getRegisters();
 * 
 * // model.addAttribute("registers",registers);
 * 
 * 
 * return "registers"; } }
 */

package kr.ac.hansung.cse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
	@RequestMapping("/registers") //requestmapping으로 의해서 /product라고하는 url로 들어오는 request가 들어오게되면 이 메소드가 수행됨
	public String getProducts(Model model) {
		
		return "registers"; //view's logical name. products.jsp파일로 넘겨주면 되면은 이 뷰에서 모델로 저장된 products의 값을 출력해주면됨
	}
}
