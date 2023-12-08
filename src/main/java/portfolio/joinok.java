package portfolio;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;


@WebServlet("/admin/joinok.do")
public class joinok extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PrintWriter pw = null;
	JSONObject jb = null;
	
    public joinok() {
        super();
    }


	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		
		String uid = req.getParameter("uid").intern();
		String upass = req.getParameter("upass").intern();
		String uname = req.getParameter("uname").intern();
		String umail = req.getParameter("umail").intern();
		
		String[] utel = req.getParameterValues("utel");
		
		String udepart = req.getParameter("udepart").intern();
		String uposition = req.getParameter("uposition").intern();
		String mage = req.getParameter("umail").intern();
		
		System.out.println(uid+upass+uname+umail+udepart+uposition+mage);
		
		String utel1 = utel[0];
		String utel2 = utel[1];
		String utel3 = utel[2];
		String utelend = utel1+utel2+utel3;
		
		this.pw = res.getWriter();
		if(uid==""||upass==""||uname==""||umail==""||udepart==""||uposition=="") {
			this.pw.print("<script>"
					+ "alert('올바른 접속형태가 아닙니다');"
					+ "history.go(-1);"
					+ "</script>");
		}else {
			insert_join j = new insert_join();
			try {
				String result = j.joindata(uid,upass,utelend,uname,umail,udepart,uposition);
				
						
				if(result=="ok") {
					this.jb = new select_json().json_ok();
					String url = req.getServletContext().getRealPath("/");
					FileWriter fw = new FileWriter(url+"userdata.json");
					System.out.println("json/sql 등록완료");
					this.pw.print("<script>alert('정상적으로 가입되었습니다.');window.location.href='./joinok.jsp';</script>;");
					fw.write(this.jb.toJSONString());
					fw.flush();
					
//					
//					RequestDispatcher view = req.getRequestDispatcher("./joinok.jsp");
//					view.forward(req, res);
				}else {
					this.pw.print("Database Field 오류");
				}
			}catch (Exception e) {
				this.pw.print("DB접속오류");
			}
		}
	}

}
