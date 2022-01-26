package com.test.main.user;

public class userMgr {

	 UserDAO dao = new UserDAO();
	 
	 public String id_search(String name,String tel){ 
	  return dao.id_search(name,tel);
	 }
	 
	 public String id_search2(String name,String email){ 
	  return dao.id_search2(name,email);
	 }

	
}
