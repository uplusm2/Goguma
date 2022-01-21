package com.test.main.user;

public class ReviewDTO {
	private String buyId;
	private String selId;
	private String productcontent;
	private String regdate;
	private int score;
	private String reviewcontent;
	@Override
	public String toString() {
		return "ReviewDTO [buyId=" + buyId + ", selId=" + selId + ", productcontent=" + productcontent + ", regdate="
				+ regdate + ", score=" + score + ", reviewcontent=" + reviewcontent + "]";
	}
	public String getBuyId() {
		return buyId;
	}
	public void setBuyId(String buyId) {
		this.buyId = buyId;
	}
	public String getSelId() {
		return selId;
	}
	public void setSelId(String selId) {
		this.selId = selId;
	}
	public String getProductcontent() {
		return productcontent;
	}
	public void setProductcontent(String productcontent) {
		this.productcontent = productcontent;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getReviewcontent() {
		return reviewcontent;
	}
	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}
}
