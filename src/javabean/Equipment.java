package javabean;

public class Equipment {
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
