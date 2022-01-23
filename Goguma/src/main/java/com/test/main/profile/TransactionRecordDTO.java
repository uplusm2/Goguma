package com.test.main.profile;

public class TransactionRecordDTO {

	private int PRODUCT_SEQ;
	private String contetnt;
	private String nickname;
	private String id;
	private String regdate;
	
	public int getPRODUCT_SEQ() {
		return PRODUCT_SEQ;
	}
	public void setPRODUCT_SEQ(int pRODUCT_SEQ) {
		PRODUCT_SEQ = pRODUCT_SEQ;
	}
	public String getContetnt() {
		return contetnt;
	}
	public void setContetnt(String contetnt) {
		this.contetnt = contetnt;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "TransactionRecordDTO [PRODUCT_SEQ=" + PRODUCT_SEQ + ", contetnt=" + contetnt + ", nickname=" + nickname
				+ ", id=" + id + ", regdate=" + regdate + "]";
	}
}
