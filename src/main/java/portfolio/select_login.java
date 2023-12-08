package portfolio;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class select_login {
	dbconfig dbc = new dbconfig();
	
	public String login_check(String ad_id, String ad_pw) throws Exception {
		
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(ad_pw.getBytes("utf-8"));
		byte[] code = md.digest();
		StringBuilder sb = new StringBuilder();
		for(byte b : code) {
			String repass = String.format("%02x", b);
			sb.append(repass);
		}
		
		Connection con = this.dbc.info();
		
		String sql = "select * from portfolio where uid=? and upass=?";
		
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, ad_id);
		ps.setString(2, sb.toString());
		
		ResultSet rs = ps.executeQuery();
		System.out.println(ps);
		String uid = "";
		String uname = "";
		String utel = "";
		String udepart = "";
		String uposition = "";
		String udate = "";
		String mage = "";
		String msg = "false";
		while(rs.next()) {
			uid = rs.getString("uid");
			uname = rs.getString("uname");
			utel = rs.getString("utel");
			udepart = rs.getString("udepart");
			uposition = rs.getString("uposition");
			udate = rs.getString("udate");
			mage = rs.getString("mage");
			msg = "true";
		}
		System.out.println(mage);
		con.close();
		ps.close();
		return msg+","+uid+","+uname+","+mage;
		}
	}
