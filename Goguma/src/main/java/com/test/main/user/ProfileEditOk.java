package com.test.main.user;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/user/profileeditok.do")
public class ProfileEditOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		UserDAO dao  = new UserDAO();
		
		
		
		
		
		 try {
	         
	         //Request -> (대신 + 파일 업로드) -> com.reilly.servlet.MultipartRequest
	         //리퀘스트를 이제 멀티가 대신할 것
	         //근데 리퀘스트가 하는게 getParameter랑 인코딩밖에 없음(인코딩은 리퀘스트가 함)
	         //즉 getParamet만 하면 됨.
	         
	         //매개변수 = (리퀘스트, 업로드할 파일위치, 파일 크기 제한, 인코딩, 디폴트)
	         
	         //MultipartRequest 객체 생성 순간 파일 업로드 처리도 같이 완료!!
	         MultipartRequest multi = new MultipartRequest(
	                                 req,
	                                 req.getRealPath("/files/profile"),
	                                 1024 * 1024 * 100,
	                                 "UTF-8",
	                                 new DefaultFileRenamePolicy()
	                            );
	         
	         String id = multi.getParameter("id");
	         String nickName = multi.getParameter("nickName");
	         String intro = multi.getParameter("intro");
	         
	         String path = multi.getFilesystemName("attach");
	         
	         
	         UserProfileDTO userProfileData = dao.getUserProfile(id);
	         
	         HashMap<String,String> map = new HashMap<String,String>();
	         
	         map.put("id", id);
	         map.put("intro", intro);
	         map.put("nickName", nickName);
	         map.put("path", path);
	         
	         int check = dao.setProfile(map);
	         System.out.println(check); // 나중에 처리
	 		 System.out.println(req.getRealPath("/files/profile"));
	 		 req.setAttribute("userProfileData", userProfileData);
	 		 
	      } catch (Exception e) {
	         System.out.println("FileTestOk.doPost()");
	         e.printStackTrace();
	      }
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/userprofile.jsp");
		dispatcher.forward(req, resp);
	}

}
