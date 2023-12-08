package portfolio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class select_json {
	dbconfig db = new dbconfig();
	PreparedStatement ps = null;
	JSONArray arr = new JSONArray();
	JSONObject jb2 = null;
	
	
	public JSONObject json_ok() {
		try {
			Connection con = this.db.info();
			String sql = "select * from portfolio order by uidx desc";
			this.ps = con.prepareStatement(sql);
			ResultSet rs = this.ps.executeQuery();
			while(rs.next()) {
				JSONObject jb = new JSONObject();
				jb.put("uidx", rs.getString("uidx"));
				jb.put("uid", rs.getString("uid"));
				jb.put("upass", rs.getString("upass"));
				jb.put("uname", rs.getString("uname"));
				jb.put("umail", rs.getString("umail"));
				jb.put("utel", rs.getString("utel"));
				jb.put("udepart", rs.getString("udepart"));
				jb.put("uposition", rs.getString("uposition"));
				jb.put("udate", rs.getString("udate"));
				this.arr.add(jb);
			}
			jb2 = new JSONObject();
			jb2.put("datalist",this.arr);
			System.out.println(jb2.toJSONString());
			con.close();
			rs.close();
			ps.close();
		}catch (Exception e) {
			System.out.println("JSON배열 SQL오류!!");
		}
		return jb2;
	}
}
