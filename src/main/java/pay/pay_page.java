package pay;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pay_page {
	
	//결제파트(신용카드, 가상계좌, 계좌이체)
	@PostMapping("payok.do")
	public String payok() {
		return "payok";
	}
	
	
	//배송지 입력사항 파트
	@PostMapping("order.do")
	public String orders(@ModelAttribute pays pays, Model m) {
	      //System.out.println(pays.getProduct_code());
	      m.addAttribute("product_code",pays.getProduct_code());
	      m.addAttribute("product_name",pays.getProduct_name());
	      m.addAttribute("product_money",pays.getProduct_money());
	      m.addAttribute("product_ea",pays.getProduct_ea());
	      return "order";
	   }
	   
	@RequestMapping("item.do")
	public String items(HttpServletRequest req, Model m) {
		HttpSession session = req.getSession();
		session.setAttribute("mid", "hong");
		session.setAttribute("mname", "홍길동");
		session.setAttribute("mtel", "01012345678");
		session.setAttribute("memail", "whdwns268@nate.com");
		
		Random rd = new Random();
		int n;
		String product_no = "";
		for(int a = 1; a < 7; a++) {
			n =rd.nextInt(9);
			product_no += n;
		}
		m.addAttribute("product_no",product_no);
		return "item";
	}
}
