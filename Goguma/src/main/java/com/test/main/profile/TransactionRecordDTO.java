package com.test.main.profile;

public class TransactionRecordDTO {
	
	private int product_seq;
	private String contetnt;
	private String nickname;
	private String id;
	private String regdate;
	private int deal_seq;
	private String type;
	private String review;
	
	private String selid;
	private String buyid;
	
	public String getReview() {
		return review;
	}
	
	public String getSelid() {
		return selid;
	}
	public void setSelid(String selid) {
		this.selid = selid;
	}
	public String getBuyid() {
		return buyid;
	}
	public void setBuyid(String buyid) {
		this.buyid = buyid;
	}
	private int rnum;
	
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getDeal_seq() {
		return deal_seq;
	}
	public void setDeal_seq(int deal_seq) {
		this.deal_seq = deal_seq;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
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
		return "TransactionRecordDTO [product_seq=" + product_seq + ", contetnt=" + contetnt + ", nickname=" + nickname
				+ ", id=" + id + ", regdate=" + regdate + ", deal_seq=" + deal_seq + ", type=" + type + ", selid="
				+ selid + ", buyid=" + buyid + ", rnum=" + rnum + "]";
	}

	public void setReview(String review) {
		this.review = review;
	}
	
}
