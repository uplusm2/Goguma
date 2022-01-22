package com.test.main.community;

public class ComCommentDTO {
	private String seq;
	private String id;
	private String content;
	private String regDate;
	
	private String cseq;
	private String nickname;
	private double isNew;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCseq() {
		return cseq;
	}
	public void setCseq(String cseq) {
		this.cseq = cseq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public double getIsNew() {
		return isNew;
	}
	public void setIsNew(double isNew) {
		this.isNew = isNew;
	}
}
