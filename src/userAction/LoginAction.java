package userAction;
import com.opensymphony.xwork2.ActionSupport;
import javabean.user;
import java.sql.*;
import javabean.user;
import database.DbCtrl;

public class LoginAction extends ActionSupport{
	private user user=new user();
	private String username;
	private String password;
	
	private DbCtrl dbctrl;
	private Connection conn=null;
	private Statement stmt;
	//String ret=null;
	//Connection conn=null;
	
	public String execute(){
		dbctrl=new DbCtrl();
		String ret=ERROR;
		conn=dbctrl.getConnection();
		try{
			String sql="select * from user where username='"+username+"'"+"and password='"+password+"'";
			stmt=conn.createStatement();
			ResultSet result=stmt.executeQuery(sql);
			if(result.next()){
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
}
