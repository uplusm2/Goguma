package com.test.main.user;

public class UserDTO {

	private String id;
	private String pw;
	private String name;
	private String lv;
	private String address_seq;
	private String address;
	private String tel;
	private String email;
	private String birth;
	private String gender;
	private String since;
	private String nickname;
	private String emd;
	
	public String getEmd() {
		return emd;
	}
	public void setEmd(String emd) {
		this.emd = emd;
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
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLv() {
		return lv;
	}
	public void setLv(String lv) {
		this.lv = lv;
	}
	public String getAddress_seq() {
		return address_seq;
	}
	public void setAddress_seq(String address_seq) {
		this.address_seq = address_seq;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSince() {
		return since;
	}
	public void setSince(String since) {
		this.since = since;
	}
	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", lv=" + lv + ", address_seq=" + address_seq
				+ ", address=" + address + ", tel=" + tel + ", email=" + email + ", birth=" + birth + ", gender="
				+ gender + ", since=" + since + ", nickname=" + nickname + "]";
	}
	
	
	
}

