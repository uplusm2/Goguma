package com.test.main.product;
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
import com.test.main.profile.ProfileDAO;

@WebServlet("/product/productRegistrationok.do")
public class ProductRegistrationok extends HttpServlet {
//	private String 
//	pathDirs
//	content
//	productName
//	price
//	type
//	"category"
//	sido
//	sgg
//	emd
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProfileDAO dao  = new ProfileDAO();
		 try {
	         
			 
			 MultipartRequest  multi = new MultipartRequest(
	                                 req,
	                                 "C:\\Goguma\\Goguma\\src\\main\\webapp\\files\\product",
	                                 1024 * 1024 * 100,
	                                 "UTF-8",
	                                 new DefaultFileRenamePolicy()
	                            );
			 
			 System.out.println(multi.getFilesystemName("pathDirs[]"));
			 
//	         String id = (String)req.getSession().getAttribute("id");
//	         String nickName = multi.getParameter("nickName");
//	         String intro = multi.getParameter("intro");
//	         
//	         String path = multi.getFilesystemName("pathDir");
//	         
//	         if(nickName==null) nickName = (String)req.getSession().getAttribute("nickname");
//	         if(nickName==null) intro = " ";
//	         if(nickName==null) path = "default image.jpg";
//	         
//	         
//	         HashMap<String,String> map = new HashMap<String,String>();
//	         
//	         map.put("id", id);
//	         map.put("intro", intro);
//	         map.put("nickName", nickName);
//	         map.put("path", path);
//	         
//	         int check = dao.setProfile(map);
//	         
//	         System.out.println(check); // 나중에 처리
//	 		 System.out.println(path);
//	 		 System.out.println(id);
//	 		 
//	 		 req.setAttribute("check", check);
//	 		 req.setAttribute("nickName", nickName);
//	 		 
//	 		 req.getSession().setAttribute("nickname", nickName);
	 		 
	      } catch (Exception e) {
	         System.out.println("productRegistrationok.doPost()");
	         e.printStackTrace();
	      }
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productRegistrationok.jsp");
		dispatcher.forward(req, resp);
	}
}

	