package com.test.main.user;

public class ReviewDTO {
	private String type;
	private int dealSeq;
	private int score;
	@Override
	public String toString() {
		return "ReviewDTO [type=" + type + ", dealSeq=" + dealSeq + ", score=" + score + ", content=" + content + "]";
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getDealSeq() {
		return dealSeq;
	}
	public void setDealSeq(int dealSeq) {
		this.dealSeq = dealSeq;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	private String content;
}
