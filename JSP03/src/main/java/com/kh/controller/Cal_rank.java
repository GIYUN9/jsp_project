package com.kh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cal_rank
 */
@WebServlet("/resultRank.do")
public class Cal_rank extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cal_rank() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("계산처리 도착");
		
		// 1)한글처리
		request.setCharacterEncoding("UTF-8");
		
		// 2)가공처리
		String name = request.getParameter("name");
		String stu_no = request.getParameter("stu_no");
		
		int kor = Integer.parseInt(request.getParameter("kor"));
		int math = Integer.parseInt(request.getParameter("math"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int sci = Integer.parseInt(request.getParameter("sci"));
		
		// 3) 요청처리
		int avg = (kor + math + eng + sci) / 4;
		
		String result = null;
		if(avg >= 90) {
			result = "a";
		} else if(avg< 90 && avg >= 80){
			result = "b";
		} else if(avg < 80 && avg >= 70) {
			result = "c";
		} else {
			result = "탈락";
		}
		
		// 4) 포워딩
		
		request.setAttribute("name", name);
		request.setAttribute("stu_no", stu_no);
		
		request.setAttribute("kor", kor);
		request.setAttribute("math", math);
		request.setAttribute("eng", eng);
		request.setAttribute("sci", sci);
		
		request.setAttribute("avg", avg);
		request.setAttribute("result", result);
		
		
		//응답할 뷰 선택하기
		RequestDispatcher view = request.getRequestDispatcher("views/rank/resultRank.jsp");
		// 포워딩
		view.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
