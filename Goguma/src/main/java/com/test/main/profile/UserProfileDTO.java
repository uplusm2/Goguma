package com.test.main.profile;

public class UserProfileDTO {
	private String id;
	private String nickName;
	private String intro;
	private String path;
	@Override
	public String toString() {
		return "UserProfileDTO [id=" + id + ", nickName=" + nickName + ", intro=" + intro + ", path=" + path + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}
