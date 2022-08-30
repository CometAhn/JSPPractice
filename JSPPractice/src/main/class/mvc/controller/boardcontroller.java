package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.model.boarddao;
import mvc.model.boarddto;

public class boardcontroller extends HttpServlet {
	private static final long serialVersionUDI = 1L;
	static final int LISTCOUNT = 5;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");

		if (command.equals("/boardlistaction.do")) { // 등록된 글 목록 페이지 출력하기
			requestboardlist(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/list.jsp");
			rd.forward(request, response);
		}else if(command.equals("/boardwriteform.do")) { // 글 등록 페이지 출력하기
			requestloginname(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/writeform.jsp");
			rd.forward(request, response);
		}else if(command.equals("/boardwriteaction.do")) { // 새로운 글 등록하기
			requestboardwrite(request);
			RequestDispatcher rd = request.getRequestDispatcher("/boardlistaction.do");
			rd.forward(request, response);
		}else if(command.equals("/boardviewaction.do")) { // 선택되 글 상세 페이지 가져오기
			requestboardview(request);
			RequestDispatcher rd = request.getRequestDispatcher("/boardviewn.do");
			rd.forward(request, response);
		}else if(command.equals("/boardview.do")) { // 글 상세 페이지 출력하기
			RequestDispatcher rd = request.getRequestDispatcher("./board/view.jsp");
			rd.forward(request, response);
		}else if(command.equals("/boardupdateaction.do")) { // 선택된 글의 조회수 증가하기
			requestboardupdate(request);
			RequestDispatcher rd = request.getRequestDispatcher("/boardlistaction.do");
			rd.forward(request, response);
		}else if(command.equals("/boarddeleteaction.do")) { // 선택된 글 삭제하기
			requestboardupdate(request);
			RequestDispatcher rd = request.getRequestDispatcher("/boardlistaction.do");
			rd.forward(request, response);
		}
	}
		
	// 등록된 글 목록 가져오기
	public void requestboardlist(HttpServletRequest request) {
		boarddao dao = boarddao.getinstance();
		List<boarddto> boardlist = new ArrayList<boarddto>();
		
		int pagenum=1;
		int limit=LISTCOUNT;
		
		if(request.getParameter("pagenu")!=null)
			pagenum=Integer.parseInt(request.getParameter("pagenum"));
		
		String items=request.getParameter("items");
		String text = request.getParameter("test");
		
		int total_record = dao.getlistcount(items, text);
		boardlist = dao.getBoardList(pagenum, limit, items, text);
		
		int total_page;
		
		if(total_record % limit==0) {
			total_page=total_record/limit;
			Math.floor(total_page);
		}
		else {
			total_page = total_record/limit;
			Math.floor(total_page);
			total_page = total_page + 1;
		}
		
		request.setAttribute("pagenum", pagenum);
		request.setAttribute("total_page", total_page);
		request.setAttribute("total_record", total_record);
		request.setAttribute("boardlist", boardlist);
	}
		
	//인증된 사용자명 가져오기
	public void requestloginname(HttpServletRequest request) {
		String id = request.getParameter("id");
		boarddao  dao = boarddao.getinstance();
		String name=dao.getloginnamebyid(id);
		request.setAttribute("name", name);
	}
	
	//새로운 글 등록하기
	public void requestboardwrite(HttpServletRequest request) {
		boarddao dao = boarddao.getinstance();
		
		boarddto board = new boarddto();
		board.setId(request.getParameter("id"));
		board.setName(request.getParameter("name"));
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));
		
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("subject"));
		System.out.println(request.getParameter("content"));
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
		String regist_day = formatter.format(new java.util.Date());
		
		board.setHit(0);
		board.setRegist_day(regist_day);
		board.setIp(request.getRemoteAddr());
		
		dao.insertboard(board);
	}
	
	// 선택된 글 상세 페이지 가져오기
	public void requestboardview(HttpServletRequest request) {
		boarddao dao = boarddao.getinstance();
		int num = Integer.parseInt(request.getParameter("num"));
		int pagenum = Integer.parseInt(request.getParameter("pagenum"));
		
		boarddto board = new boarddto();
		board = dao.getboardbynum(num, pagenum);
		
		request.setAttribute("num", num);
		request.setAttribute("page", pagenum);
		request.setAttribute("board", board);
	}
	
	//선택된 글 내용 수정하기
	public void requestboardupdate(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		int pagenum = Integer.parseInt(request.getParameter("pagenum"));
		
		boarddao dao = boarddao.getinstance();
		
		boarddto board = new boarddto();
		board.setNum(num);
		board.setName(request.getParameter("name"));
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));

		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
		String regist_day = formatter.format(new java.util.Date());
		
		board.setHit(0);
		board.setRegist_day(regist_day);
		board.setIp(request.getRemoteAddr());
		
		dao.updateboard(board);
	}
	
	public void requestboarddelete(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		int pagenum = Integer.parseInt(request.getParameter("pagenum"));
		
		boarddao dao = boarddao.getinstance();
		dao.deleteboard(num);
	}
}
