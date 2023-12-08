package portfolio;

import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class insert_join {
	dbconfig dbc = new dbconfig();
	String msg = "";
	
	public String joindata(String uid, String upass, String utelend, String uname, String umail, String udepart, String uposition) throws Exception {
		
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(upass.getBytes("utf-8"));
		byte[] code = md.digest();
		StringBuilder sb = new StringBuilder();
		for(byte b : code) {
			String repass = String.format("%02x", b);
			sb.append(repass);
		}
		Connection con = this.dbc.info();
		
		String insert = "insert into portfolio values('0',?,?,?,?,?,?,?,default,default)";
		
		PreparedStatement ps = con.prepareStatement(insert);
		ps.setString(1, uid);
		ps.setString(2, sb.toString());
		ps.setString(3, uname);
		ps.setString(4, umail );
		ps.setString(5, utelend);
		ps.setString(6, udepart);
		ps.setString(7, uposition);
		
		System.out.println(ps);
		int call = ps.executeUpdate();
		System.out.println(call);
		if(call > 0) {
			this.msg = "ok";
		}
		else {
			this.msg = "no";
		}
		
		con.close();
		ps.close();
		return msg;
		
	}
}
