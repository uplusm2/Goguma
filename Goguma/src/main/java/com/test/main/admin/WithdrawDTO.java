package com.test.main.admin;

public class WithdrawDTO {

	private String id;				//아이디
	private String withdrawTypeSeq;	//차단유형번호
	private String regDate;			//차단날짜
	private String type;			//차단유형
	
	private String name;			//이름
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getwithdrawTypeSeq() {
		return withdrawTypeSeq;
	}
	public void setwithdrawTypeSeq(String withdrawTypeSeq) {
		this.withdrawTypeSeq = withdrawTypeSeq;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
