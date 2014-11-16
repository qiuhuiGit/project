package equipAction;

import com.opensymphony.xwork2.ActionSupport;
import javabean.Equipment;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import database.DbCtrl;
@SuppressWarnings("serial")
public class EquipQueryAction extends ActionSupport {
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
		private double minprice,maxprice;
		private String mintime,maxtime;
		private DbCtrl dbctrl;
		private Connection conn=null;
		private Statement stmt,stmt1,stmt2,stmt3,stmt4;

		private List<Equipment> namelist = new ArrayList<Equipment>();
		private List<Equipment> venderlist = new ArrayList<Equipment>();
		private List<Equipment> pricelist = new ArrayList<Equipment>();
		public String execute(){
			dbctrl=new DbCtrl();
			String ret=ERROR;
			String max=""+maxprice;
			String min=""+minprice;
			conn=dbctrl.getConnection();
			try{
				if(ID!=null){
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
			}
				if(name!=null){
					String sql1="select * from equipment where name='"+name+"'";
					stmt1=conn.createStatement();
					ResultSet result1=stmt1.executeQuery(sql1);
					while(result1.next()){
						Equipment tmp=new Equipment();
						tmp.setID(result1.getString(1));
						tmp.setName(result1.getString(2));
						tmp.setModel(result1.getString(3));
						tmp.setSpec(result1.getString(4));
						tmp.setPrice(result1.getDouble(5));
						tmp.setVender(result1.getString(6));
						tmp.setSerialnumber(result1.getString(7));
						tmp.setBuydate(result1.getString(8));
						tmp.setOutdate(result1.getString(9));
						tmp.setLocation(result1.getString(10));
						namelist.add(tmp);
						ret="name";
					}
					namelist.toArray();
			     }
			if(vender!=null){
				String sql2="select * from equipment where vender='"+vender+"'";
				stmt2=conn.createStatement();
				ResultSet result2=stmt2.executeQuery(sql2);
				while(result2.next()){
					Equipment tmp1=new Equipment();
					tmp1.setID(result2.getString(1));
					tmp1.setName(result2.getString(2));
					tmp1.setModel(result2.getString(3));
					tmp1.setSpec(result2.getString(4));
					tmp1.setPrice(result2.getDouble(5));
					tmp1.setVender(result2.getString(6));
					tmp1.setSerialnumber(result2.getString(7));
					tmp1.setBuydate(result2.getString(8));
					tmp1.setOutdate(result2.getString(9));
					tmp1.setLocation(result2.getString(10));
					venderlist.add(tmp1);
					ret="vender";
				}
				venderlist.toArray();
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
		public double getMinprice(){
			return minprice;
		}
		public void setMinprice(double minprice){
			this.minprice=minprice;
		}
		public double getMaxprice(){
			return maxprice;
		}
		public void setMaxprice(double maxprice){
			this.maxprice=maxprice;
		}
		public String getMintime(){
			return mintime;
		}
		public void setMintime(String mintime){
			this.mintime=mintime;
		}
		public String getMaxtime(){
			return maxtime;
		}
		public void setMaxtime(String maxtime){
			this.maxtime=maxtime;
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
/********************************************************************************/	
		public List<Equipment> getNamelist() {
			return namelist;
		}

		public void setNamelist(List<Equipment> namelist) {
			this.namelist = namelist;
		}
		
		public List<Equipment> getVenderlist() {
			return venderlist;
		}

		public void setVenderlist(List<Equipment> venderlist) {
			this.venderlist = venderlist;
		}
		public List<Equipment> getPricelist() {
			return pricelist;
		}

		public void setPricelist(List<Equipment> pricelist) {
			this.pricelist = pricelist;
		}
/*********************************************************************************/
}
