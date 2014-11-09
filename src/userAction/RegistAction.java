package userAction;

import com.opensymphony.xwork2.ActionSupport;
import javabean.user;
import java.sql.*;

import javabean.user;
import database.DbCtrl;

public class RegistAction extends ActionSupport{
	private user user=new user();
	private String username;
	private String password;
	private String sex;
	private String country;
	private String email;
	
	private DbCtrl dbctrl;
	private Connection conn=null;
	private Statement stmt1,stmt;
	//String ret=null;
	//Connection conn=null;
	
	public String execute(){
		dbctrl=new DbCtrl();
		String ret=null;
		conn=dbctrl.getConnection();	
	try{
		String sql="select * from user where username='"+username+"'";
		stmt=conn.createStatement();
		ResultSet result=stmt.executeQuery(sql);
		if(result.next()){
			ret=ERROR;
		}
		else{
		String sql1="insert into user values('"+username+"'"+","+"'"+password+"'"+","+"'"+sex+"'"+","+"'"+country+"'"+","+"'"+email+"'"+")";
		stmt1=conn.createStatement();
		stmt1.executeUpdate(sql1);
		ret=SUCCESS;
		}
	}catch(Exception e) {
		e.printStackTrace();
		ret = ERROR;
	} finally {
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
			}
		}
	 }
	return ret;
}
	public user getUser(){
		return user;
	}
	public void setUser(user user){
		this.user=user;
	}
	
	public String getUsername(){
		return username;
	}

	public void setUsername(String username){
		this.username=username;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password=password;
	}
	public String getSex(){
		return sex;
	}
	public void setSex(String sex){
		this.sex=sex;
	}
	public String getCountry(){
		return country;
	}
	public void setCountry(String country){
		this.country=country;
	}
	public String getEmail(){
		return email;
	}
	public void setEmail(String email){
		this.email=email;
	}
}
