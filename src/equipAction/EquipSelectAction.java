package equipAction;

import com.opensymphony.xwork2.ActionSupport;
import javabean.Equipment;
import java.sql.*;
import database.DbCtrl;

public class EquipSelectAction extends ActionSupport {
		private Equipment Equipment=new Equipment();
		private String ID;
		private String name;
		private String model;
		private String spec;
		private double price;
		private String vender;
		private String serialnumber;
		private String buydate;
		private String outdate;
		private String location;
		
		private DbCtrl dbctrl;
		private Connection conn=null;
		private Statement stmt;

		
		public String execute(){
			dbctrl=new DbCtrl();
			String ret=ERROR;
			conn=dbctrl.getConnection();
			try{
				String sql="select * from equipment where ID='"+ID+"'";
				stmt=conn.createStatement();
				ResultSet result=stmt.executeQuery(sql);
				if(result.next()){
					Equipment.setID(result.getString(1));
					Equipment.setName(result.getString(2));
					Equipment.setModel(result.getString(3));
					Equipment.setSpec(result.getString(4));
					Equipment.setPrice(result.getDouble(5));
					Equipment.setVender(result.getString(6));
					Equipment.setSerialnumber(result.getString(7));
					Equipment.setBuydate(result.getString(8));
					Equipment.setOutdate(result.getString(9));
					Equipment.setLocation(result.getString(10));
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
		
		public Equipment getEquipment(){
			return Equipment;
		}
		public void setEquipment(Equipment Equipment){
			this.Equipment=Equipment;
		}
		
		public String getID(){
			return ID;
		}

		public void setID(String ID){
			this.ID=ID;
		}
		public String getName(){
			return name;
		}
		public void setName(String name){
			this.name=name;
		}
		
		public String getModel(){
			return model;
		}
		public void setModel(String model){
			this.model=model;
		}
		
		public String getSpec(){
			return spec;
		}
		public void setSpec(String spec){
			this.spec=spec;
		}
		
		public double getPrice(){
			return price;
		}
		public void setPrice(double price){
			this.price=price;
		}
		
		public String getVender(){
			return vender;
		}
		
		public void setVender(String vender){
			this.vender=vender;
		}
		public String getSerialnumber(){
			return serialnumber;
		}
		public void setSerialnumber(String serialnumber){
			this.serialnumber=serialnumber;
		}
		public String getBuydate(){
			return buydate;
		}
		
		public void setBuydate(String buydate){
			this.buydate=buydate;
		}
		
		public String getOutdate(){
			return outdate;
		}
		
		public void setOutdate(String outdate){
			this.outdate=outdate;
		}
		
		public String getLocation(){
			return location;
		}
		public void setLocation(String location){
			this.location=location;
		}
}
