package com.test.main.product;
import java.io.IOException;
import java.util.Enumeration;
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
		HashMap<String, String > map = new HashMap<String,String>();
		HashMap<String, String > map2 = new HashMap<String,String>();
		
		String id = (String)req.getSession().getAttribute("id");
		
		 try {
	         
			 
			 MultipartRequest  multi = new MultipartRequest(
	                                 req,
	                                 "C:\\Goguma\\Goguma\\src\\main\\webapp\\files\\product",
	                                 1024 * 1024 * 100,
	                                 "UTF-8",
	                                 new DefaultFileRenamePolicy()
	                            );
			 
			 
			 String category = multi.getParameter("category");
			 String productName = multi.getParameter("productName");
			 String price = multi.getParameter("price");
			 String type = multi.getParameter("type");
			 String content = multi.getParameter("content");
			 System.out.println(type);
			 
			 
			 
			 map.put("product_seq", "product_seq.nextVal");
			 map.put("id", id);
			 map.put("address_seq", 5+"");
			 map.put("product_type_seq", category);
			 map.put("name", productName);
			 map.put("price", price);
			 map.put("is_auction", type);
			 map.put("content", content);
			 map.put("regdate", "DEFAULT");
			 map.put("is_completion", "DEFAULT");
			 map.put("readcount", "DEFAULT");
			 map.put("is_deletion", "DEFAULT");
			 
			 String productSeq = dao.setProductData(map);
			 
			 //상품지역 픽스 5	서울	강서구	화곡동
			 Enumeration files = multi.getFileNames();

			// 업로드한 파일들의 이름을 얻어옴
			 
			 //상품 시퀀수 가져오기...
			 int check=0;
			  while(files.hasMoreElements()) {
				  String file = (String)files.nextElement();
				  if(multi.getFilesystemName(file)!=null) {
					  map2.put("PRODUCT_IMG_SEQ", "product_img_seq.nextval");
					  map2.put("PRODUCT_SEQ", productSeq);
					  map2.put("PATH", multi.getFilesystemName(file));
					  
					  check = dao.setProductImage(map2);
				  }
			  }
			 
			  req.setAttribute("check", check);
	 		 
	      } catch (Exception e) {
	         System.out.println("productRegistrationok.doPost()");
	         e.printStackTrace();
	      }
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productRegistrationok.jsp");
		dispatcher.forward(req, resp);
	}
}

	