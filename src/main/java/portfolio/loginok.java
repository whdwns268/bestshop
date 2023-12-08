package portfolio;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;


@WebServlet("/admin/loginok.do")
public class loginok extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PrintWriter pw = null;

    public loginok() {
        super();
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		
		String ad_id = req.getParameter("ad_id");
		String ad_pw = req.getParameter("ad_pw");
		
		//System.out.println(ad_pw + ad_id);
		
		this.pw = res.getWriter();
		
		select_login sl = new select_login();
		
		try {
			String msg = sl.login_check(ad_id,ad_pw);
			
			String data[] = msg.split(",");
			//System.out.println(Arrays.deepToString(data));

			if(data[0].equals("true")) {
				
				
				if(data[3].equals("N")) {
					this.pw.print("<script>"
							+ "alert('관리자의 승인이 아직 처리되지 않았습니다');"
							+ "history.go(-1);"
							+ "</script>");
				}
				else {
					HttpSession session = req.getSession();
					session.setAttribute("uid", data[1]);
					session.setAttribute("uname", data[2]);
					
					this.pw.print("<script>alert('정상적으로 로그인되었습니다.');"
							+"location.href='./admin_main.do';" 
							+"</script>");
				}
				
			}
			else {
				this.pw.print("<script>"
						+ "alert('로그인 정보를 확인하지 못하였습니다.');"
						+ "history.go(-1);"
						+ "</script>");
			}
			
		} catch (Exception e) {
			System.out.println("Controller Error");
			System.out.println(e);
		}
		
		
	}

}
