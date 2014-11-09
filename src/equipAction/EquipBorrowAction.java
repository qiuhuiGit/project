package equipAction;

import com.opensymphony.xwork2.ActionSupport;
import javabean.Equipment;
import java.sql.*;

import database.DbCtrl;
public class EquipBorrowAction extends ActionSupport {
		private Equipment Equipment=new Equipment();
		private String type;
		private String name;
		private String model;
		private String picture;
		private String size;
		private String date;
		private String price;
		private String number;
		private String number1;
		private DbCtrl dbctrl;
		private Connection conn=null;
		private Statement stmt,stmt1;
		private String num;
		
		public String execute(){
			dbctrl=new DbCtrl();
			String ret=ERROR;
			conn=dbctrl.getConnection();
			try{
				String sql="select number from equipment where name='"+name+"'";
				stmt=conn.createStatement();
				ResultSet result=stmt.executeQuery(sql);
				if(result.next()){
					num=result.getString(1);
				}
				int i=Integer.parseInt(num);
				int j=Integer.parseInt(number1);
				int k=i-j;
				System.out.println(k);
				String NUM=String.valueOf(k);
				String sql1="update equipment set number="+"'"+NUM+"'"+"where name='"+name+"'";
				stmt1=conn.createStatement();
				stmt1.executeUpdate(sql1);
				ret=SUCCESS;
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
		
		public Equipment getEquipment(){
			return Equipment;
		}
		public void setEquipment(Equipment Equipment){
			this.Equipment=Equipment;
		}
		public String getType(){
			return type;
		}

		public void setType(String type){
			this.type=type;
		}
	    
		public String getName(){
			return name;
		}
		public void setName(String name){
			this.name=name;
		}
		
		public String getSize(){
			return size;
		}
		public void setId(String size){
			this.size=size;
		}
		
		public String getPicture(){
			return picture;
		}
		public void setPicture(String picture){
			this.picture=picture;
		}
		
		public String getModel(){
			return model;
		}
		public void setModel(String model){
			this.model=model;
		}
		
		public String getDate(){
			return date;
		}
		
		public void setDate(String date){
			this.date=date;
		}
		public String getPrice(){
			return price;
		}
		public void setPrice(String price){
			this.price=price;
		}
		public String getNumber(){
			return number;
		}
		
		public void setNumber(String number){
			this.number=number1;
		}
		
		public String getNumber1(){
			return number1;
		}
		
		public void setNumber1(String number1){
			this.number1=number1;
		}
}
