package com.mrsudharsan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;

import com.mrsudharsan.bean.UserBean;

public class UserDao extends HttpServlet {
	protected static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_database", "root", "12345");
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}

	public static int save(UserBean u) {
		int status = 0;
		try {
			Connection conn = UserDao.getConnection();
			PreparedStatement ps = conn.prepareStatement(
					"insert into registration(regno,firstname,lastname,dob,sex,phoneno,emailid,country) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getRegno());
			ps.setString(2, u.getFname());
			ps.setString(3, u.getLname());
			ps.setString(4, u.getDob());
			ps.setString(5, u.getSex());
			ps.setString(6, u.getPhno());
			ps.setString(7, u.getEmailid());
			ps.setString(8, u.getCountry());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}
		return status;
	}

	public static boolean login(String regno, String dob) {
		try {
			Connection conn = UserDao.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from registration where regno=? and dob=?");
			ps.setString(1,regno);
			ps.setString(2,dob);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return false;
	}
	public static int update(UserBean u)
	{
		int status=0;
		try {
			Connection conn = UserDao.getConnection();
			PreparedStatement ps = conn.prepareStatement(
					"update registration set firstname=?,lastname=?,dob=?,sex=?,phoneno=?,emailid=?,country=? where regno=?");
			ps.setString(1, u.getFname());
			ps.setString(2, u.getLname());
			ps.setString(3, u.getDob());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getPhno());
			ps.setString(6, u.getPhno());
			ps.setString(7, u.getCountry());
			ps.setString(8, u.getRegno());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}
		return status;		
	}
	
	public static int delete(UserBean u)
	{
		int status=0;
		try
		{
			Connection conn = UserDao.getConnection();
			PreparedStatement ps = conn.prepareStatement(
					"delete from registration where regno=?");
			ps.setString(1, u.getRegno());
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;		
	}
	
	 public static List<UserBean> getAllRecords()
	 {
		 List<UserBean> list=new ArrayList<UserBean>();
		 try {
			 Connection conn = UserDao.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from registration");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				UserBean u=new UserBean();
				u.setRegno(rs.getString("regno"));
				u.setFname(rs.getString("firstname"));
				u.setLname(rs.getString("lastname"));
				u.setDob(rs.getString("dob"));
				u.setSex(rs.getString("sex"));
				u.setPhno(rs.getString("phoneno"));
				u.setEmailid(rs.getString("emailid"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
		 }catch(Exception e)
		 {
			 System.out.println(e);
		 }
		return list;		 
	 }
	 public static UserBean getRecordById(String regno){
			UserBean u=null;
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from registration where regno=?");
				ps.setString(1,regno);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					u=new UserBean();
					u.setRegno(rs.getString("regno"));
					u.setFname(rs.getString("firstname"));
					u.setLname(rs.getString("lastname"));
					u.setLname(rs.getString("lastname"));
					u.setDob(rs.getString("dob"));
					u.setSex(rs.getString("sex"));
					u.setPhno(rs.getString("phoneno"));
					u.setEmailid(rs.getString("emailid"));
					u.setCountry(rs.getString("country"));
				}
			}catch(Exception e){System.out.println(e);}
			return u;
	 }

}
