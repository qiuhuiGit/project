package javabean;

public class Move {
	public String ID;
	public String name;
	public String from;
	public String to;
	public String moveman;
	public String recieveman;
	public String approval;
	public String movedate;
	
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
	public String getFrom(){
		return from;
	}
	public void setFrom(String from){
		this.from=from;
	}
	public String getTo(){
		return to;
	}
	public void setTo(String to){
		this.to=to;
	}
	public String getMoveman(){
		return moveman;
	}
	public void setMoveman(String moveman){
		this.moveman=moveman;
	}
	public String getRecieveman(){
		return recieveman;
	}
	public void setRecieveman(String recieveman){
		this.recieveman=recieveman;
	}
	public String getApproval(){
		return approval;
	}
	public void setApproval(String approval){
		this.approval=approval;
	}
	public String getMovedate(){
		return movedate;
	}
	public void setMovedate(String movedate){
		this.movedate=movedate;
	}
}
