package web;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import portfolio.shopsetupvo;
import portfolio.smembervo;

@Controller
public class web_page {
	
	@Inject
	private SqlSessionTemplate sqlSessoin;
	
	@RequestMapping("/index")
	public void index(HttpServletRequest req,Model model) throws Exception {
	String stitle = sqlSessoin.selectOne("portfolioDB.stitle");
	model.addAttribute("stitle", stitle);
	HttpSession session = req.getSession();
		if (session.getAttribute("sname") == null) {
			System.out.println("NO session");
		}
		else {
			session.getAttribute("sname");
			System.out.println(session.getAttribute("sname"));
		}
	}
	
	@RequestMapping("/login.do")
	public void login(HttpServletRequest req,Model model) throws Exception {
	String stitle = sqlSessoin.selectOne("portfolioDB.stitle");
	model.addAttribute("stitle", stitle);
	}
	
	@RequestMapping("/faq.do")
	public void faq(HttpServletRequest req,Model model) throws Exception {
	String stitle = sqlSessoin.selectOne("portfolioDB.stitle");
	model.addAttribute("stitle", stitle);
	}
	
	@RequestMapping("/seach.do")
	public void seach(HttpServletRequest req,Model model) throws Exception {
	String stitle = sqlSessoin.selectOne("portfolioDB.stitle");
	model.addAttribute("stitle", stitle);
	}
	
	@RequestMapping("/notice.do")
	public void notice(HttpServletRequest req,Model model) throws Exception {
	String stitle = sqlSessoin.selectOne("portfolioDB.stitle");
	model.addAttribute("stitle", stitle);
	}
	
	@RequestMapping("/user_loginck.do")
	public void user_loginck(HttpServletRequest req,HttpServletResponse res,smembervo smembervo) throws Exception {
		req.setCharacterEncoding("utf-8");
	    res.setCharacterEncoding("utf-8");
	    res.setContentType("text/html");
	    List<smembervo> userinfo = sqlSessoin.selectList("portfolioDB.shoploginck",smembervo);
	    System.out.println(userinfo);
		PrintWriter pw2 = res.getWriter();		
		if(userinfo.size() != 0) {
			HttpSession session = req.getSession();
			for (smembervo vo : userinfo) {
			session.setAttribute("sname", vo.getSname());
			session.setAttribute("sid", vo.getSid());
			}
		    pw2.print("<script>window.location.href='./index';</script>");
		}
		else{
			pw2.print("<script>alert('아이디 패스워드를 확인해주세요'); history.back();</script>");
		}
	}

	@RequestMapping("/sessionlogout.do")
	public void sessionlogout(HttpServletRequest req,HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
	    res.setCharacterEncoding("utf-8");
	    res.setContentType("text/html");
	
	    HttpSession session = req.getSession();
	    session.invalidate();
		PrintWriter pw2 = res.getWriter();		
		pw2.print("<script> sessionStorage.removeItem('userid'); alert('정상적으로 로그아웃 되었습니다.'); window.location.href='./index';</script>");
	}
	
	
	@GetMapping("/setup.do")
	public List<shopsetupvo> getShopSetup(@ModelAttribute("setuplist") shopsetupvo shopsetupvo) {
	    List<shopsetupvo> shopSetupList = sqlSessoin.selectList("portfolioDB.setupselect",shopsetupvo);
	    //System.out.println(shopSetupList);
	    return shopSetupList;
	}

	@RequestMapping("/faqapi.do")
	public <faqapi> void faqapi(HttpServletRequest req, HttpServletResponse res){
		res.setCharacterEncoding("UTF-8");
		res.addHeader("Access-Control-Allow-Origin", "*");
		res.addHeader("Access-Control-Allow-Credentials", "true");
		
		List<faqapi> nc = sqlSessoin.selectList("portfolioDB.faqapi");
		System.out.println(nc);
		JSONArray array = new JSONArray();
		for (faqapi datas : nc) {
			array.add(datas);
		}

		try {
			PrintWriter pw = res.getWriter();
			pw.print(array);
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}




