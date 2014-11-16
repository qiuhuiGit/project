package equipAction;

import com.opensymphony.xwork2.ActionSupport;
import javabean.Equipment;
import java.sql.*;

import database.DbCtrl;

public class EquipEditAction extends ActionSupport {
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
		private String buyyear,buymonth,outyear,outmonth;
		
		private DbCtrl dbctrl;
		private Connection conn=null;
		private Statement stmt1;

		
		public String execute(){
			dbctrl=new DbCtrl();
			String ret=ERROR;
			conn=dbctrl.getConnection();
			buydate=buyyear+buymonth;
			outdate=outyear+outmonth;
			try{
				String sql1="update equipment set name='"+name+"'"+","+"model="+"'"+model+"'"+","+"spec="
						+"'"+spec+"',"+"price="+"'"+price+"',"+"vender="+"'"
						+vender+"',"+"serialnumber="+"'"+serialnumber+"',"+"buydate="+"'"+buydate+"',"+"outdate="+"'"+outdate+"',"+"location="+"'"+location+"'"+" "+"where ID="+ID;
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
		
		public String getID(){
			return ID;
		}

		public void setID(String ID){
			this.ID=ID;
		}
		
		public String getBuyyear(){
			return buyyear;
		}
		public void setBuyyear(String buyyear){
			this.buyyear=buyyear;
		}
		public String getBuymonth(){
			return buymonth;
		}

		public void setBuymonth(String buymonth){
			this.buymonth=buymonth;
		}
		public String getOutyear(){
			return outyear;
		}

		public void setOutyear(String outyear){
			this.outyear=outyear;
		}
		public String getOutmonth(){
			return outmonth;
		}

		public void setOutmonth(String outmonth){
			this.outmonth=outmonth;
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
