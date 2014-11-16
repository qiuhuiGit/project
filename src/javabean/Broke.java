package javabean;

public class Broke {
	private String brokeman;
	private String reason;
	private String ID;
	private String brokename;
	private String approval;
	private String broketime;
	private String brokemoney;
	
	public String getBrokeman(){
		return brokeman;
	}
	public void setBrokeman(String brokeman) {
		this.brokeman=brokeman;
	}
	
	public String getReason(){
		return reason;
	}
	public void setReason(String reason) {
		this.reason=reason;
	}
	
	public String getID(){
		return ID;
	}
	public void setID(String ID) {
		this.ID=ID;
	}
	public String getBrokename(){
		return brokename;
	}
	public void setBrokename(String brokename) {
		this.brokename=brokename;
	}
	public String Approval(){
		return approval;
	}
	public void setApproval(String approval) {
		this.approval=approval;
	}
	public String getBroketime(){
		return broketime;
	}
	public void setBroketime(String broketime) {
		this.broketime=broketime;
	}
	public String getBrokemoney(){
		return brokemoney;
	}
	public void setBrokemoney(String brokemoney) {
		this.brokemoney=brokemoney;
	}
}
