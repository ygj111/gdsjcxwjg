package com.hhh.jcxwjg.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JdbcTest {
	
	public List findAll() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			conn = JdbcUtil.getConnection();
			stmt = conn.prepareStatement("select * from JCJG_AREA");
			rs = stmt.executeQuery();
			List<Map> cs = new ArrayList<Map>();
			while(rs.next()){
				Map data = new HashMap();
				data.put("id", rs.getString("code"));
				//c.setId(rs.getInt("id"));
				cs.add(data);
			}
			
			return cs;
		}catch(Exception e){
			throw new RuntimeException(e);
		}finally{
			JdbcUtil.release(rs, stmt, conn);
		}
		
	}
	
	public static void main(String[] args) {
		JdbcTest test=new JdbcTest();
		System.out.println(test.findAll());
	}

}
