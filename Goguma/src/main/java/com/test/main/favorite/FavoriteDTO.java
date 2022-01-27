package com.test.main.favorite;

public class FavoriteDTO {
	private String favorite_seq;
	private String favid;
	private String id;
	private String product_seq;
	private String name;
	private String regdate;
	private String price;
	private String is_auction;
	
	public String getFavid() {
		return favid;
	}
	public void setFavid(String favid) {
		this.favid = favid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
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
	public String getFavorite_seq() {
		return favorite_seq;
	}
	public void setFavorite_seq(String favorite_seq) {
		this.favorite_seq = favorite_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(String product_seq) {
		this.product_seq = product_seq;
	}
	
}
