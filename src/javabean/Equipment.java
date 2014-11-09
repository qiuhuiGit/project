package javabean;

public class Equipment {
		private String type;
		private String name;
		private String model;
		private String picture;
		private String size;
		private String date;
		private String price;
		private String number;
		
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
	
	public String getModel(){
		return model;
	}
	public void setModel(String model){
		this.model=model;
	}
	
	public String getPicture(){
		return picture;
	}
	public void setPicture(String picture){
		this.picture=picture;
	}
	
	public String getSize(){
		return size;
	}
	public void setSize(String size){
		this.size=size;
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
		this.number=number;
	}
}
