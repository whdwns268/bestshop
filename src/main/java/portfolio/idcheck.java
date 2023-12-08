package portfolio;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/idcheck.do")

public class idcheck extends HttpServlet {
   private static final long serialVersionUID = 1L;
   PrintWriter pw = null;

   public idcheck() {
      super();

   }

   protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
      req.setCharacterEncoding("utf-8");
      res.setCharacterEncoding("utf-8");
      res.setContentType("application/x-www-form-urlencoded");

      String uid = req.getParameter("uid").intern();

      this.pw = res.getWriter();
      System.out.println(uid);
      if (uid == "") {
         this.pw.print("<script>alert('아이디가 안옴'); history.go(-1); </script>");
      } else {

         idcheckgo idcheck = new idcheckgo();

         try {

            String msg = idcheck.midsel(uid);
            System.out.println(msg);

            res.getWriter().write(msg);

         } catch (Exception e) {
            System.out.println(e);
            System.out.println("idcheck.do 에러남");
         }
      }

   }
}