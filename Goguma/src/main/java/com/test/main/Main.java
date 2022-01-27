package com.test.main;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.community.CommunityDTO;
import com.test.main.main.NoticeDAO;
import com.test.main.main.NoticeDTO;
import com.test.main.main.ProductDAO;
import com.test.main.main.ProductDTO;
import com.test.main.main.SearchDAO;
import com.test.main.main.SearchDTO;

@WebServlet("/main.do")
public class Main extends HttpServlet {
	private SearchDAO dao;
	private ProductDAO productDao;
	private NoticeDAO noticeDao;
	private NoticeDTO noticeDto;
	
	private ArrayList<ProductDTO> productList;
	private ArrayList<SearchDTO> searchList;
	
	{
		dao = new SearchDAO();
		productDao = new ProductDAO();
		noticeDao = new NoticeDAO();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		searchList = dao.list();
		productList = productDao.newList();
		noticeDto = noticeDao.newNotice();
		
		setProductPrice();
		setProductName();
		setProductInterval();
		setNoticeDate();
		
		req.setAttribute("searchList", searchList);
		req.setAttribute("productList", productList);
		req.setAttribute("noticeDto", noticeDto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main.jsp");
		dispatcher.forward(req, resp);
		
	}

	private void setNoticeDate() {
		String tmp = noticeDto.getRegdate().substring(0, 10).replace("-", "/");
		noticeDto.setRegdate(tmp);
	}

	private void setProductInterval() {
		/*
			일, 시간, 분, 초로 구분하기
			 
			1. String -> int 형변환할 때 반올림 되게
				> Math.round() 사용
			2. if interval이 1보다 큰지?
			 	> 크거나 같으면 + "일"
				> 작으면 * 24, if interval이 1보다 큰지?
					> + "시간"
					> * 60, if interval이 1보다 큰지?
						> + "분"
						> * 60, + "초"
		 */
		for (ProductDTO dto : productList) {
//			double temp = Double.parseDouble(dto.getInterval()); 
//			int interval = (int)(Math.round(temp));
			int interval = (int)(Math.round(Double.parseDouble(dto.getInterval())));
			
			if (interval >= 1) {
				dto.setInterval(interval + "일");
			} else {
				interval *= 24;
				if(interval >= 1) {
					dto.setInterval(interval + "시간");
				} else {
					interval *= 60;
					if(interval >= 1) {
						dto.setInterval(interval + "분");
					} else {
						interval *= 60;
						dto.setInterval(interval + "초");
					}
				}
			}
		}
		
	}

	private void setProductName() {
		for (ProductDTO dto : productList) {
			String temp = dto.getName();
			if(temp.length() >= 12) {
				temp = temp.substring(0, 12);
				temp += "...";
				dto.setName(temp);
			}
		}
	}

	private void setProductPrice() {
		for (ProductDTO dto : productList) {
			String temp = String.format("%,d", Integer.parseInt(dto.getPrice()));
			dto.setPrice(temp);
		}
	}
}
