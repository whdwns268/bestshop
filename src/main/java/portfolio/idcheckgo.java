package portfolio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class idcheckgo {
   dbconfig dbc = new dbconfig();
   
   public String midsel(String uid) throws Exception {
      Connection con = this.dbc.info();   
      String insert = "select * from portfolio where uid=?";
      
      PreparedStatement ps = con.prepareStatement(insert);
      
      ps.setString(1, uid);
      

      ResultSet TF = ps.executeQuery();
      
      String msg = "";
      if(TF.next()==true) {
         msg = "no";
      }else if(TF.next()==false) {
         msg = "yes";
      }
      
                  
      con.close();
      ps.close();
      return msg;
   }
}