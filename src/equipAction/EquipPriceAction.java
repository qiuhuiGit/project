package equipAction;

import com.opensymphony.xwork2.ActionSupport;
import javabean.Equipment;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import database.DbCtrl;
@SuppressWarnings("serial")
public class EquipPriceAction extends ActionSupport {
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
		private DbCtrl dbctrl;
		private Connection conn=null;
		private Statement stmt;
		
		private List<Equipment> pricelist = new ArrayList<Equipment>();
		public String execute(){
			dbctrl=new DbCtrl();
			String ret=ERROR;
			conn=dbctrl.getConnection();
			System.out.println(minprice+" "+maxprice);
			try{
					String sql="select * from equipment where price between "+minprice+" and "+maxprice;
					stmt=conn.createStatement();
					ResultSet result=stmt.executeQuery(sql);
					while(result.next()){
						Equipment tmp2=new Equipment();
						tmp2.setID(result.getString(1));
						tmp2.setName(result.getString(2));
						tmp2.setModel(result.getString(3));
						tmp2.setSpec(result.getString(4));
						tmp2.setPrice(result.getDouble(5));
						tmp2.setVender(result.getString(6));
						tmp2.setSerialnumber(result.getString(7));
						tmp2.setBuydate(result.getString(8));
						tmp2.setOutdate(result.getString(9));
						tmp2.setLocation(result.getString(10));
						pricelist.add(tmp2);
						ret=SUCCESS;
					}
					pricelist.toArray();
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
		public List<Equipment> getPricelist() {
			return pricelist;
		}

		public void setPricelist(List<Equipment> pricelist) {
			this.pricelist = pricelist;
		}
/*********************************************************************************/
}
