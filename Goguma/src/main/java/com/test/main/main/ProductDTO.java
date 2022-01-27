package com.test.main.main;

public class ProductDTO {
	private String seq;
	private String id;
	private String address_seq;
	private String product_type_seq;
	private String name;
	private String price;
	private String is_auction;
	private String content;
	private String regdate;
	private String main_img;
	
	private String imgPath;
	private String interval;
	
	public String getMain_img() {
		return main_img;
	}
	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}
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
	public String getAddress_seq() {
		return address_seq;
	}
	public void setAddress_seq(String address_seq) {
		this.address_seq = address_seq;
	}
	public String getProduct_type_seq() {
		return product_type_seq;
	}
	public void setProduct_type_seq(String product_type) {
		this.product_type_seq = product_type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getIs_auction() {
		return is_auction;
	}
	public void setIs_auction(String is_auction) {
		this.is_auction = is_auction;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getIs_completion() {
		return is_completion;
	}
	public void setIs_completion(String is_completion) {
		this.is_completion = is_completion;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getIs_deletion() {
		return is_deletion;
	}
	public void setIs_deletion(String is_deletion) {
		this.is_deletion = is_deletion;
	}
	public String getInterval() {
		return interval;
	}
	public void setInterval(String interval) {
		this.interval = interval;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	private String is_completion;
	private int readcount;
	private String is_deletion;
	
	
}
