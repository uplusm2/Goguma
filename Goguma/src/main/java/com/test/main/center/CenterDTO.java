package com.test.main.center;

import java.util.ArrayList;

public class CenterDTO {
	
	private String seq;
	private String questionseq;
	private String title;
	private String content;
	private String regdate;
	private String type;
	private int readcount;
	private ArrayList<String> img;
	
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getQuestionseq() {
		return questionseq;
	}
	public void setQuestionseq(String questionseq) {
		this.questionseq = questionseq;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public ArrayList<String> getImg() {
		return img;
	}
	public void setImg(ArrayList<String> img) {
		this.img = img;
	}
	
	
	
	
	
	
}
